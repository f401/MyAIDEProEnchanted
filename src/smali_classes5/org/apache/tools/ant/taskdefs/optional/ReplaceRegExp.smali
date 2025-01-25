.class public Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;
.super Lorg/apache/tools/ant/Task;
.source "ReplaceRegExp.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private byline:Z

.field private encoding:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private flags:Ljava/lang/String;

.field private preserveLastModified:Z

.field private regex:Lorg/apache/tools/ant/types/RegularExpression;

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private subs:Lorg/apache/tools/ant/types/Substitution;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 127
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 129
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->preserveLastModified:Z

    .line 134
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->encoding:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    .line 141
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    .line 143
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    .line 144
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 145
    return-void
.end method

.method private multilineReplace(Ljava/io/Reader;Ljava/io/Writer;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v0

    return v0
.end method

.method private replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Lorg/apache/tools/ant/types/RegularExpression;Lorg/apache/tools/ant/types/Substitution;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 266
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 269
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_11

    .line 270
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 272
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 273
    return-void

    .line 267
    :cond_17
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only filesystem resources are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 257
    return-void
.end method

.method public createRegexp()Lorg/apache/tools/ant/types/RegularExpression;
    .registers 3

    .line 282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_c

    .line 286
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    .line 287
    return-object v0

    .line 283
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one regular expression is allowed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSubstitution()Lorg/apache/tools/ant/types/Substitution;
    .registers 3

    .line 298
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-nez v0, :cond_c

    .line 303
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 304
    return-object v0

    .line 299
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one substitution expression is allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doReplace(Lorg/apache/tools/ant/types/RegularExpression;Lorg/apache/tools/ant/types/Substitution;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 332
    .line 333
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    .line 335
    invoke-interface {v0, p3, p4}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 336
    const-string v1, "Found match; substituting"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1, p4}, Lorg/apache/tools/ant/util/regexp/Regexp;->substitute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 341
    :cond_20
    return-object p3
.end method

.method protected doReplace(Ljava/io/File;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "replace"

    const-string v3, ".txt"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v6

    .line 355
    const/4 v2, 0x0

    .line 357
    :try_start_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->encoding:Ljava/lang/String;

    if-nez v0, :cond_fd

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 358
    :goto_1a
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_15b

    move-result-object v7

    .line 359
    :try_start_25
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_154

    move-result-object v8

    .line 360
    const/4 v1, 0x0

    .line 361
    const/4 v4, 0x0

    .line 363
    :try_start_32
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_1b4

    .line 364
    :try_start_37
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v8, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_1b7

    .line 365
    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Replacing pattern \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->getPattern(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' with \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z
    :try_end_78
    .catchall {:try_start_3c .. :try_end_78} :catchall_1bb

    const-string v1, ""

    if-eqz v0, :cond_103

    const-string v0, " by line"

    :goto_7e
    :try_start_7e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_107

    move-object v0, v1

    :goto_8a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    .line 371
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    if-eqz v0, :cond_184

    .line 372
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a3
    .catchall {:try_start_7e .. :try_end_a3} :catchall_1bb

    .line 373
    :try_start_a3
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_1bf

    .line 375
    :try_start_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    const/4 v0, 0x0

    .line 380
    :cond_ae
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v5

    .line 382
    const/16 v9, 0xd

    if-ne v5, v9, :cond_123

    .line 383
    if-eqz v0, :cond_121

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 387
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_cb
    .catchall {:try_start_a8 .. :try_end_cb} :catchall_143

    .line 423
    :cond_cb
    :goto_cb
    if-gez v5, :cond_ae

    move-object v5, v3

    .line 429
    :goto_ce
    :try_start_ce
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 430
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V
    :try_end_d4
    .catchall {:try_start_ce .. :try_end_d4} :catchall_14d

    .line 431
    if-eqz v8, :cond_d9

    :try_start_d6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_154

    :cond_d9
    if-eqz v7, :cond_de

    :try_start_db
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 433
    :cond_de
    if-eqz v2, :cond_1a7

    .line 434
    const-string v0, "File has changed; saving the updated file"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V
    :try_end_e6
    .catchall {:try_start_db .. :try_end_e6} :catchall_15b

    .line 436
    :try_start_e6
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 437
    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v6, p1}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 438
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->preserveLastModified:Z

    if-eqz v3, :cond_f6

    .line 439
    invoke-virtual {v2, p1, v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_f6} :catch_18b
    .catchall {:try_start_e6 .. :try_end_f6} :catchall_15b

    .line 441
    :cond_f6
    const/4 v0, 0x0

    .line 450
    :goto_f7
    if-eqz v0, :cond_fc

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 454
    :cond_fc
    return-void

    .line 357
    :cond_fd
    :try_start_fd
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_15b

    move-result-object v0

    goto/16 :goto_1a

    .line 367
    :cond_103
    const-string v0, ""

    goto/16 :goto_7e

    .line 368
    :cond_107
    :try_start_107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " with flags: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11e
    .catchall {:try_start_107 .. :try_end_11e} :catchall_1bb

    move-result-object v0

    goto/16 :goto_8a

    .line 393
    :cond_121
    const/4 v0, 0x1

    goto :goto_cb

    .line 395
    :cond_123
    const/16 v9, 0xa

    if-ne v5, v9, :cond_162

    .line 397
    :try_start_127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 399
    if-eqz v0, :cond_138

    .line 400
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    .line 401
    const/4 v0, 0x0

    .line 403
    :cond_138
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_142
    .catchall {:try_start_127 .. :try_end_142} :catchall_143

    goto :goto_cb

    .line 429
    :catchall_143
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    :goto_146
    :try_start_146
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 430
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 431
    throw v0
    :try_end_14d
    .catchall {:try_start_146 .. :try_end_14d} :catchall_14d

    .line 358
    :catchall_14d
    move-exception v0

    if-eqz v8, :cond_153

    :try_start_150
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_1b0

    :cond_153
    :goto_153
    :try_start_153
    throw v0
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_154

    :catchall_154
    move-exception v0

    if-eqz v7, :cond_15a

    :try_start_157
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_1b2

    :cond_15a
    :goto_15a
    :try_start_15a
    throw v0
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_15b

    .line 450
    :catchall_15b
    move-exception v0

    if-eqz v6, :cond_161

    .line 451
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 453
    :cond_161
    throw v0

    .line 407
    :cond_162
    if-nez v0, :cond_166

    if-gez v5, :cond_17c

    .line 409
    :cond_166
    :try_start_166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 411
    if-eqz v0, :cond_177

    .line 412
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    .line 413
    const/4 v0, 0x0

    .line 416
    :cond_177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    :cond_17c
    if-ltz v5, :cond_cb

    .line 420
    int-to-char v9, v5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_182
    .catchall {:try_start_166 .. :try_end_182} :catchall_143

    goto/16 :goto_cb

    .line 426
    :cond_184
    :try_start_184
    invoke-direct {p0, v3, v5, p2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->multilineReplace(Ljava/io/Reader;Ljava/io/Writer;I)Z
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_1bb

    move-result v2

    move-object v4, v3

    goto/16 :goto_ce

    .line 442
    :catch_18b
    move-exception v0

    .line 443
    :try_start_18c
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t rename temporary file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 447
    :cond_1a7
    const-string v0, "No change made"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V
    :try_end_1ad
    .catchall {:try_start_18c .. :try_end_1ad} :catchall_15b

    move-object v0, v6

    goto/16 :goto_f7

    .line 358
    :catchall_1b0
    move-exception v1

    goto :goto_153

    :catchall_1b2
    move-exception v1

    goto :goto_15a

    .line 429
    :catchall_1b4
    move-exception v0

    move-object v2, v4

    goto :goto_146

    :catchall_1b7
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto :goto_146

    :catchall_1bb
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    goto :goto_146

    :catchall_1bf
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    goto :goto_146
.end method

.method public execute()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x0

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    if-eqz v0, :cond_f2

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-eqz v0, :cond_ea

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_76

    .line 475
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Ljava/lang/String;)I

    move-result v1

    .line 477
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 479
    :try_start_21
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Ljava/io/File;I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_7e

    .line 490
    :cond_26
    :goto_26
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_fa

    .line 491
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 492
    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 496
    :try_start_4c
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Ljava/io/File;I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_2e

    .line 497
    :catch_50
    move-exception v3

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred processing file: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    goto :goto_2e

    .line 471
    :cond_76
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You cannot supply the \'file\' attribute and resource collections at the same time."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :catch_7e
    move-exception v0

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred processing file: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    .line 482
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    goto :goto_26

    .line 485
    :cond_a6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v0, :cond_26

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The following file is missing: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    .line 487
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    goto/16 :goto_26

    .line 503
    :cond_cb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The following file is missing: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    goto/16 :goto_2e

    .line 467
    :cond_ea
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nothing to replace expression with."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_f2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No expression to match."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_fa
    return-void
.end method

.method public setByLine(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    .line 224
    return-void
.end method

.method public setByLine(Z)V
    .registers 2

    .line 236
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    .line 237
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->encoding:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    .line 155
    return-void
.end method

.method public setFlags(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setMatch(Ljava/lang/String;)V
    .registers 4

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_f

    .line 168
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    .line 169
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 170
    return-void

    .line 165
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one regular expression is allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreserveLastModified(Z)V
    .registers 2

    .line 315
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->preserveLastModified:Z

    .line 316
    return-void
.end method

.method public setReplace(Ljava/lang/String;)V
    .registers 4

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-nez v0, :cond_f

    .line 186
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 187
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Substitution;->setExpression(Ljava/lang/String;)V

    .line 188
    return-void

    .line 182
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one substitution expression is allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
