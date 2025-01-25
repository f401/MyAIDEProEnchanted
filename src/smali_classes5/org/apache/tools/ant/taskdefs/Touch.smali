.class public Lorg/apache/tools/ant/taskdefs/Touch;
.super Lorg/apache/tools/ant/Task;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private dateTime:Ljava/lang/String;

.field private dateTimeConfigured:Z

.field private dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

.field private file:Ljava/io/File;

.field private fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

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

.field private millis:J

.field private mkdirs:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Touch$1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Touch$1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    .line 79
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->filesets:Ljava/util/List;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->verbose:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 90
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    return-void
.end method

.method private getTimestamp()J
    .registers 5

    .line 326
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_c
    return-wide v0
.end method

.method private touch(Ljava/io/File;J)V
    .registers 8

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_26

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->verbose:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    .line 354
    :goto_1c
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Touch;->log(Ljava/lang/String;I)V

    .line 357
    :try_start_1f
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->mkdirs:Z

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/util/FileUtils;->createNewFile(Ljava/io/File;Z)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_34

    .line 363
    :cond_26
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 367
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    .line 368
    return-void

    .line 355
    :cond_32
    const/4 v0, 0x3

    goto :goto_1c

    .line 358
    :catch_34
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 364
    :cond_50
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not change modification date of read-only file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private touch(Lorg/apache/tools/ant/types/Resource;J)V
    .registers 10

    .line 330
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_22

    .line 331
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 332
    if-eqz v0, :cond_16

    .line 334
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Ljava/io/File;J)V

    .line 350
    :cond_15
    :goto_15
    return-void

    .line 336
    :cond_16
    const-class v0, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-interface {v0, p2, p3}, Lorg/apache/tools/ant/types/resources/Touchable;->touch(J)V

    goto :goto_15

    .line 339
    :cond_22
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_15

    array-length v0, v1

    if-lez v0, :cond_15

    .line 342
    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_41

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 343
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide p2

    .line 345
    :cond_41
    array-length v2, v1

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 346
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Ljava/io/File;J)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    :cond_a
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 210
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 211
    monitor-exit p0

    return-void

    .line 208
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_7

    .line 183
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 184
    return-void

    .line 180
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one mapper may be added to the %s task."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getTaskName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public addConfiguredMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 3

    .line 169
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Touch;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 170
    return-void
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .registers 2

    .line 200
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Touch;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 201
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->filesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Touch;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 193
    return-void
.end method

.method protected checkConfiguration()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    monitor-enter p0

    .line 219
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    if-nez v0, :cond_b

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v1, :cond_5a

    .line 223
    :cond_b
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_65

    .line 226
    :cond_1b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTimeConfigured:Z

    if-nez v1, :cond_58

    .line 227
    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    .line 228
    const-string v1, "now"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    .line 256
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting millis to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " from datetime attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    iget-wide v4, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_aa

    const/4 v0, 0x4

    .line 256
    :goto_4f
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Touch;->log(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Touch;->setMillis(J)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTimeConfigured:Z
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_62

    .line 262
    :cond_58
    monitor-exit p0

    return-void

    .line 220
    :cond_5a
    :try_start_5a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source--a file or resource collection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_62

    .line 218
    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_65
    :try_start_65
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Use a resource collection to touch directories."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_6d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getPrimaryFormat()Ljava/text/DateFormat;
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_62

    move-result-object v0

    .line 232
    const/4 v1, 0x0

    .line 234
    :try_start_74
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_7d
    .catch Ljava/text/ParseException; {:try_start_74 .. :try_end_7d} :catch_95
    .catchall {:try_start_74 .. :try_end_7d} :catchall_62

    move-result-wide v2

    move-object v0, v1

    .line 243
    :cond_7f
    :goto_7f
    if-nez v0, :cond_ac

    .line 250
    cmp-long v0, v2, v6

    if-gez v0, :cond_32

    .line 251
    :try_start_85
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Date of %s results in negative milliseconds value relative to epoch (January 1, 1970, 00:00:00 GMT)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 235
    :catch_95
    move-exception v0

    .line 236
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v4}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getFallbackFormat()Ljava/text/DateFormat;
    :try_end_9b
    .catchall {:try_start_85 .. :try_end_9b} :catchall_62

    move-result-object v4

    .line 237
    if-eqz v4, :cond_7f

    .line 241
    :try_start_9e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_a7
    .catch Ljava/text/ParseException; {:try_start_9e .. :try_end_a7} :catch_ba
    .catchall {:try_start_9e .. :try_end_a7} :catchall_62

    move-result-wide v2

    move-object v0, v1

    .line 244
    goto :goto_7f

    .line 257
    :cond_aa
    const/4 v0, 0x3

    goto :goto_4f

    .line 248
    :cond_ac
    :try_start_ac
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_ba
    .catchall {:try_start_ac .. :try_end_ba} :catchall_62

    .line 242
    :catch_ba
    move-exception v0

    goto :goto_7f
.end method

.method public execute()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->checkConfiguration()V

    .line 273
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->touch()V

    .line 274
    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting datetime attribute to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->log(Ljava/lang/String;I)V

    .line 121
    :cond_19
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTimeConfigured:Z

    .line 123
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    .line 99
    return-void
.end method

.method public setMillis(J)V
    .registers 4

    .line 107
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    .line 108
    return-void
.end method

.method public setMkdirs(Z)V
    .registers 2

    .line 132
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->mkdirs:Z

    .line 133
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 3

    .line 151
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Touch$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/taskdefs/Touch$2;-><init>(Lorg/apache/tools/ant/taskdefs/Touch;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    .line 161
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->verbose:Z

    .line 143
    return-void
.end method

.method protected touch()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getTimestamp()J

    move-result-wide v2

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    if-eqz v0, :cond_1c

    .line 284
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Lorg/apache/tools/ant/types/Resource;J)V

    .line 287
    :cond_1c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_21

    .line 310
    :cond_20
    return-void

    .line 291
    :cond_21
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 292
    const-class v0, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Touchable;

    .line 293
    if-eqz v0, :cond_40

    .line 296
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Lorg/apache/tools/ant/types/Resource;J)V

    goto :goto_25

    .line 294
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t touch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_57
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->filesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 303
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 304
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    .line 306
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/4 v0, 0x0

    :goto_7f
    if-ge v0, v6, :cond_5d

    aget-object v7, v4, v0

    .line 307
    new-instance v8, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v8, v5, v7}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8, v2, v3}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Lorg/apache/tools/ant/types/Resource;J)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f
.end method

.method protected touch(Ljava/io/File;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Ljava/io/File;J)V

    .line 323
    return-void
.end method
