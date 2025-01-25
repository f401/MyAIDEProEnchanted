.class public Lorg/apache/tools/ant/taskdefs/FixCRLF;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "FixCRLF.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;,
        Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;
    }
.end annotation


# static fields
.field public static final ERROR_FILE_AND_SRCDIR:Ljava/lang/String; = "<fixcrlf> error: srcdir and file are mutually exclusive"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final FIXCRLF_ERROR:Ljava/lang/String; = "<fixcrlf> error: "


# instance fields
.field private destDir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private fcv:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

.field private outputEncoding:Ljava/lang/String;

.field private preserveLastModified:Z

.field private srcDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->preserveLastModified:Z

    .line 96
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    .line 98
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 99
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    .line 104
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Lorg/apache/tools/ant/filters/FixCrLfFilter;
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method private processFile(Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 347
    new-instance v11, Ljava/io/File;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    invoke-direct {v11, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 349
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    if-nez v0, :cond_f9

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    move-object v10, v0

    .line 351
    :goto_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    if-nez v0, :cond_2b

    .line 352
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 353
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->add(Lorg/apache/tools/ant/filters/ChainableReader;)V

    .line 354
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    .line 355
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_2b
    sget-object v0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "fixcrlf"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v2

    .line 359
    :try_start_3c
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    .line 360
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    if-nez v8, :cond_45

    move-object v8, v7

    .line 361
    :cond_45
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getProject()Lorg/apache/tools/ant/Project;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_c6
    .catchall {:try_start_3c .. :try_end_48} :catchall_ef

    move-result-object v9

    .line 359
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v11

    :try_start_4d
    invoke-virtual/range {v0 .. v9}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    .line 363
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    .line 366
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destFile "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_76} :catch_f1
    .catchall {:try_start_4d .. :try_end_76} :catchall_f3

    .line 369
    :try_start_76
    invoke-virtual {v0, v4, v2}, Lorg/apache/tools/ant/util/FileUtils;->contentEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_c1

    const/4 v1, 0x1

    .line 370
    :goto_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_85} :catch_f5
    .catchall {:try_start_76 .. :try_end_85} :catchall_f7

    if-eqz v1, :cond_c3

    const-string v3, " is being written"

    .line 371
    :goto_89
    :try_start_89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 370
    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    .line 366
    :cond_94
    if-eqz v1, :cond_b5

    .line 375
    invoke-virtual {v0, v2, v4}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 376
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->preserveLastModified:Z

    if-eqz v1, :cond_b5

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preserved lastModified for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    .line 379
    invoke-virtual {v0, v4, v12, v13}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_b5} :catch_f5
    .catchall {:try_start_89 .. :try_end_b5} :catchall_f7

    .line 385
    :cond_b5
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 386
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    .line 389
    :cond_c0
    return-void

    .line 369
    :cond_c1
    const/4 v1, 0x0

    goto :goto_7d

    .line 371
    :cond_c3
    const-string v3, " is not written, as the contents are identical"

    goto :goto_89

    .line 382
    :catch_c6
    move-exception v0

    .line 383
    :goto_c7
    :try_start_c7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error running fixcrlf on file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d3
    .catchall {:try_start_c7 .. :try_end_d3} :catchall_ed

    :try_start_d3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_de
    .catchall {:try_start_d3 .. :try_end_de} :catchall_de

    .line 385
    :catchall_de
    move-exception v0

    :goto_df
    if-eqz v2, :cond_ec

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 386
    sget-object v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    .line 388
    :cond_ec
    throw v0

    .line 385
    :catchall_ed
    move-exception v0

    goto :goto_df

    :catchall_ef
    move-exception v0

    goto :goto_df

    .line 382
    :catch_f1
    move-exception v0

    goto :goto_c7

    .line 385
    :catchall_f3
    move-exception v0

    goto :goto_df

    .line 382
    :catch_f5
    move-exception v0

    goto :goto_c7

    .line 385
    :catchall_f7
    move-exception v0

    goto :goto_df

    :cond_f9
    move-object v10, v0

    goto/16 :goto_12
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

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    if-eqz v0, :cond_19

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    if-nez v0, :cond_3e

    .line 317
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fileset:Lorg/apache/tools/ant/types/FileSet;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setFile(Ljava/io/File;)V

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    .line 321
    :cond_19
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    if-eqz v0, :cond_7e

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 333
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    if-eqz v0, :cond_3d

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 344
    :cond_3d
    return-void

    .line 314
    :cond_3e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: srcdir and file are mutually exclusive"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_46
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: destdir is not a directory: \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 335
    :cond_54
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: destdir does not exist: \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 330
    :cond_62
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: srcdir is not a directory: \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 326
    :cond_70
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: srcdir does not exist: \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 322
    :cond_7e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: srcdir attribute must be set!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 3

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->chain(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->validate()V

    .line 293
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "default"

    .line 294
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "options: eol="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 295
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getEol()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tab="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 296
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTab()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eof="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 297
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getEof()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tablength="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 298
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTablength()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encoding="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " outputencoding="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    if-nez v1, :cond_85

    :goto_63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7a
    if-ge v0, v2, :cond_84

    aget-object v3, v1, v0

    .line 307
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->processFile(Ljava/lang/String;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 309
    :cond_84
    return-void

    :cond_85
    move-object v0, v1

    goto :goto_63
.end method

.method public setCr(Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    .line 187
    const-string v0, "DEPRECATED: The cr attribute has been deprecated,"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    .line 189
    const-string v0, "Please use the eol attribute instead"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;-><init>()V

    .line 192
    const-string v2, "remove"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 193
    const-string v0, "lf"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->setValue(Ljava/lang/String;)V

    .line 200
    :goto_21
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->setEol(Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;)V

    .line 201
    return-void

    .line 194
    :cond_25
    const-string v2, "asis"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 195
    const-string v0, "asis"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->setValue(Ljava/lang/String;)V

    goto :goto_21

    .line 198
    :cond_33
    const-string v0, "crlf"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->setValue(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    .line 138
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setEof(Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;)V
    .registers 4

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEof(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V

    .line 245
    return-void
.end method

.method public setEol(Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;)V
    .registers 4

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    .line 170
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    .line 155
    return-void
.end method

.method public setFixlast(Z)V
    .registers 3

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setFixlast(Z)V

    .line 272
    return-void
.end method

.method public setJavafiles(Z)V
    .registers 3

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setJavafiles(Z)V

    .line 146
    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setPreserveLastModified(Z)V
    .registers 2

    .line 280
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->preserveLastModified:Z

    .line 281
    return-void
.end method

.method public setSrcdir(Ljava/io/File;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    .line 129
    return-void
.end method

.method public setTab(Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;)V
    .registers 4

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setTab(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V

    .line 215
    return-void
.end method

.method public setTablength(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setTablength(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 230
    return-void

    .line 226
    :catch_6
    move-exception v0

    .line 229
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
