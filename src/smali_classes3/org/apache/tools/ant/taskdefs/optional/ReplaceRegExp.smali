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

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 273
    return-void

    .line 267
    :cond_1
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

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    .line 287
    return-object v0

    .line 283
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one regular expression is allowed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSubstitution()Lorg/apache/tools/ant/types/Substitution;
    .registers 3

    .line 298
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 304
    return-object v0

    .line 299
    :cond_0
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

    if-eqz v1, :cond_0

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
    :cond_0
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
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->encoding:Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 358
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v7

    .line 359
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    .line 360
    const/4 v1, 0x0

    .line 361
    const/4 v4, 0x0

    .line 363
    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 364
    :try_start_3
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v8, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 365
    :try_start_4
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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    const-string v1, ""

    if-eqz v0, :cond_7

    const-string v0, " by line"

    :goto_1
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_2
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

    if-eqz v0, :cond_13

    .line 372
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 373
    :try_start_6
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 375
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    const/4 v0, 0x0

    .line 380
    :cond_0
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v5

    .line 382
    const/16 v9, 0xd

    if-ne v5, v9, :cond_a

    .line 383
    if-eqz v0, :cond_9

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
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 423
    :cond_1
    :goto_3
    if-gez v5, :cond_0

    move-object v5, v3

    .line 429
    :goto_4
    :try_start_8
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 430
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 431
    if-eqz v8, :cond_2

    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_2
    if-eqz v7, :cond_3

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 433
    :cond_3
    if-eqz v2, :cond_14

    .line 434
    const-string v0, "File has changed; saving the updated file"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 436
    :try_start_b
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 437
    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v6, p1}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 438
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->preserveLastModified:Z

    if-eqz v3, :cond_4

    .line 439
    invoke-virtual {v2, p1, v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 441
    :cond_4
    const/4 v0, 0x0

    .line 450
    :goto_5
    if-eqz v0, :cond_5

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 454
    :cond_5
    return-void

    .line 357
    :cond_6
    :try_start_c
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v0

    goto/16 :goto_0

    .line 367
    :cond_7
    const-string v0, ""

    goto/16 :goto_1

    .line 368
    :cond_8
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " with flags: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-result-object v0

    goto/16 :goto_2

    .line 393
    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    .line 395
    :cond_a
    const/16 v9, 0xa

    if-ne v5, v9, :cond_f

    .line 397
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 399
    if-eqz v0, :cond_b

    .line 400
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    .line 401
    const/4 v0, 0x0

    .line 403
    :cond_b
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    .line 429
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    :goto_6
    :try_start_f
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 430
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 431
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 358
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_c

    :try_start_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_c
    :goto_7
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v7, :cond_d

    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_d
    :goto_8
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 450
    :catchall_3
    move-exception v0

    if-eqz v6, :cond_e

    .line 451
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 453
    :cond_e
    throw v0

    .line 407
    :cond_f
    if-nez v0, :cond_10

    if-gez v5, :cond_12

    .line 409
    :cond_10
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 411
    if-eqz v0, :cond_11

    .line 412
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    .line 413
    const/4 v0, 0x0

    .line 416
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    :cond_12
    if-ltz v5, :cond_1

    .line 420
    int-to-char v9, v5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_3

    .line 426
    :cond_13
    :try_start_15
    invoke-direct {p0, v3, v5, p2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->multilineReplace(Ljava/io/Reader;Ljava/io/Writer;I)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    move-result v2

    move-object v4, v3

    goto/16 :goto_4

    .line 442
    :catch_0
    move-exception v0

    .line 443
    :try_start_16
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
    :cond_14
    const-string v0, "No change made"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-object v0, v6

    goto/16 :goto_5

    .line 358
    :catchall_4
    move-exception v1

    goto :goto_7

    :catchall_5
    move-exception v1

    goto :goto_8

    .line 429
    :catchall_6
    move-exception v0

    move-object v2, v4

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    goto :goto_6

    :catchall_9
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    goto :goto_6
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

    if-eqz v0, :cond_6

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-eqz v0, :cond_5

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_2

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Ljava/lang/String;)I

    move-result v1

    .line 477
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 490
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_7

    .line 491
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

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

    if-eqz v3, :cond_4

    .line 496
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 497
    :catch_0
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

    goto :goto_1

    .line 471
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You cannot supply the \'file\' attribute and resource collections at the same time."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :catch_1
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

    goto :goto_0

    .line 485
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v0, :cond_1

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

    goto/16 :goto_0

    .line 503
    :cond_4
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

    goto/16 :goto_1

    .line 467
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nothing to replace expression with."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No expression to match."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_7
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

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    .line 169
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 170
    return-void

    .line 165
    :cond_0
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

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 187
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Substitution;->setExpression(Ljava/lang/String;)V

    .line 188
    return-void

    .line 182
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one substitution expression is allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
