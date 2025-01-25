.class public Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;
.super Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.source "ChangeLogTask.java"


# instance fields
.field private cvsUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;",
            ">;"
        }
    .end annotation
.end field

.field private destFile:Ljava/io/File;

.field private endDate:Ljava/util/Date;

.field private endTag:Ljava/lang/String;

.field private final filesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private inputDir:Ljava/io/File;

.field private remote:Z

.field private startDate:Ljava/util/Date;

.field private startTag:Ljava/lang/String;

.field private usersFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->cvsUsers:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filesets:Ljava/util/List;

    return-void
.end method

.method private filterEntrySet([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;
    .registers 9

    const/4 v1, 0x0

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    array-length v3, p1

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_2d

    aget-object v4, p1, v0

    .line 370
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getDate()Ljava/util/Date;

    move-result-object v5

    .line 379
    if-nez v5, :cond_15

    .line 369
    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 383
    :cond_15
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    if-eqz v6, :cond_1f

    invoke-virtual {v6, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 387
    :cond_1f
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endDate:Ljava/util/Date;

    if-eqz v6, :cond_29

    invoke-virtual {v6, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 391
    :cond_29
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 394
    :cond_2d
    new-array v0, v1, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    return-object v0
.end method

.method private loadUserlist(Ljava/util/Properties;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    if-eqz v0, :cond_12

    .line 353
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_13

    .line 358
    :cond_12
    return-void

    .line 354
    :catch_13
    move-exception v0

    .line 355
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private replaceAuthorIdWithName(Ljava/util/Properties;[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    .registers 7

    .line 402
    array-length v1, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_1e

    aget-object v2, p2, v0

    .line 403
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 404
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->setAuthor(Ljava/lang/String;)V

    .line 402
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 407
    :cond_1e
    return-void
.end method

.method private validate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    if-nez v0, :cond_10

    .line 322
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 324
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->destFile:Ljava/io/File;

    if-eqz v0, :cond_63

    .line 327
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 331
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 335
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startTag:Ljava/lang/String;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;

    if-eqz v0, :cond_36

    :cond_2e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    if-nez v0, :cond_49

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endDate:Ljava/util/Date;

    if-nez v0, :cond_49

    .line 340
    :cond_36
    return-void

    .line 332
    :cond_37
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    .line 333
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot find user lookup list %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 337
    :cond_49
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify either a tag or date range, not both"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_51
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 329
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot find base dir %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 325
    :cond_63
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destfile must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeChangeLog([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 418
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->destFile:Ljava/io/File;

    .line 419
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1a} :catch_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_46

    .line 421
    :try_start_1a
    new-instance v0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;-><init>()V

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->printChangeLog(Ljava/io/PrintWriter;[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V

    .line 423
    invoke-virtual {v1}, Ljava/io/PrintWriter;->checkError()Z
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_34

    move-result v0

    if-nez v0, :cond_2c

    .line 426
    :try_start_28
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_28 .. :try_end_2b} :catch_39
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_46

    .line 430
    :goto_2b
    return-void

    .line 424
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered an error writing changelog"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 418
    :catchall_34
    move-exception v0

    :try_start_35
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_51

    :goto_38
    :try_start_38
    throw v0
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_46

    .line 426
    :catch_39
    move-exception v0

    .line 427
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_2b

    .line 428
    :catch_46
    move-exception v0

    .line 429
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 418
    :catchall_51
    move-exception v1

    goto :goto_38
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public addUser(Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->cvsUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 217
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 220
    :try_start_3
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->validate()V

    .line 221
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 223
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->loadUserlist(Ljava/util/Properties;)V

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->cvsUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;

    .line 226
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->validate()V

    .line 227
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->getDisplayname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2f

    goto :goto_14

    .line 310
    :catchall_2f
    move-exception v0

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 311
    throw v0

    .line 230
    :cond_33
    :try_start_33
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_2f

    const-string v0, ""

    if-nez v2, :cond_d4

    .line 231
    :try_start_39
    const-string v2, "log"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setCommand(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 234
    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;-><init>()V

    .line 235
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 236
    const-string v3, "cvsversion"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setTaskName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getCvsRoot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setCvsRoot(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getCvsRsh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setCvsRsh(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getPassFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setPassfile(Ljava/io/File;)V

    .line 240
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setDest(Ljava/io/File;)V

    .line 241
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->execute()V

    .line 242
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->supportsCvsLogWithSOption()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 243
    const-string v2, "-S"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 257
    :cond_7d
    :goto_7d
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startTag:Ljava/lang/String;

    if-nez v2, :cond_85

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;
    :try_end_83
    .catchall {:try_start_39 .. :try_end_83} :catchall_2f

    if-eqz v3, :cond_e9

    .line 259
    :cond_85
    if-nez v2, :cond_165

    const-string v2, ""

    move-object v3, v2

    .line 260
    :goto_8a
    :try_start_8a
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;

    if-nez v2, :cond_114

    .line 261
    :goto_8e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-r"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 275
    :cond_aa
    :goto_aa
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3
    :try_end_c9
    .catchall {:try_start_8a .. :try_end_c9} :catchall_2f

    move v0, v1

    :goto_ca
    if-ge v0, v6, :cond_b0

    aget-object v7, v3, v0

    .line 279
    :try_start_ce
    invoke-virtual {p0, v7}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    .line 248
    :cond_d4
    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setCommand(Ljava/lang/String;)V

    .line 249
    const-string v2, "rlog"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 252
    const-string v2, "-S"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 255
    const-string v2, "-N"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_7d

    .line 262
    :cond_e9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    if-eqz v0, :cond_aa

    .line 263
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v2, "-d"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_aa

    :cond_114
    move-object v0, v2

    .line 260
    goto/16 :goto_8e

    .line 283
    :cond_117
    new-instance v0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z

    .line 284
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getModules()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 286
    new-instance v1, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;-><init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V

    .line 289
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getCommand()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->log(Ljava/lang/String;I)V

    .line 291
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setDest(Ljava/io/File;)V

    .line 292
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setExecuteStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V
    :try_end_13b
    .catchall {:try_start_ce .. :try_end_13b} :catchall_2f

    .line 294
    :try_start_13b
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->execute()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_159

    .line 296
    :try_start_13e
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErrors()Ljava/lang/String;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_148

    .line 299
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->log(Ljava/lang/String;I)V

    .line 301
    :cond_148
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->getEntrySetAsArray()[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    move-result-object v0

    .line 303
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filterEntrySet([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    move-result-object v0

    .line 305
    invoke-direct {p0, v5, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->replaceAuthorIdWithName(Ljava/util/Properties;[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V

    .line 307
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->writeChangeLog([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    :try_end_156
    .catchall {:try_start_13e .. :try_end_156} :catchall_2f

    .line 310
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 311
    return-void

    .line 296
    :catchall_159
    move-exception v0

    :try_start_15a
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErrors()Ljava/lang/String;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_164

    .line 299
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->log(Ljava/lang/String;I)V

    .line 301
    :cond_164
    throw v0
    :try_end_165
    .catchall {:try_start_15a .. :try_end_165} :catchall_2f

    :cond_165
    move-object v3, v2

    goto/16 :goto_8a
.end method

.method public setDaysinpast(I)V
    .registers 12

    const-wide/16 v8, 0x3c

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    .line 168
    new-instance v4, Ljava/util/Date;

    const-wide/16 v6, 0x18

    mul-long/2addr v2, v6

    mul-long/2addr v2, v8

    mul-long/2addr v2, v8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    sub-long/2addr v0, v2

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setStart(Ljava/util/Date;)V

    .line 169
    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->destFile:Ljava/io/File;

    .line 119
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 110
    return-void
.end method

.method public setEnd(Ljava/util/Date;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endDate:Ljava/util/Date;

    .line 155
    return-void
.end method

.method public setEndTag(Ljava/lang/String;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setRemote(Z)V
    .registers 2

    .line 179
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z

    .line 180
    return-void
.end method

.method public setStart(Ljava/util/Date;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    .line 146
    return-void
.end method

.method public setStartTag(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startTag:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setUsersfile(Ljava/io/File;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    .line 128
    return-void
.end method
