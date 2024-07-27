.class public Lorg/apache/tools/ant/taskdefs/Get;
.super Lorg/apache/tools/ant/Task;
.source "Get.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;,
        Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;,
        Lorg/apache/tools/ant/taskdefs/Get$GetThread;,
        Lorg/apache/tools/ant/taskdefs/Get$NullProgress;,
        Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;
    }
.end annotation


# static fields
.field private static final BIG_BUFFER_SIZE:I = 0x19000

.field private static final DEFAULT_AGENT_PREFIX:Ljava/lang/String; = "Apache Ant"

.field private static final DOTS_PER_LINE:I = 0x32

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_MOVED_TEMP:I = 0x133

.field private static final NUMBER_RETRIES:I = 0x3

.field private static final REDIRECT_LIMIT:I = 0x19


# instance fields
.field private destination:Ljava/io/File;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpUseCaches:Z

.field private ignoreErrors:Z

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private maxTime:J

.field private numberRetries:I

.field private pword:Ljava/lang/String;

.field private quiet:Z

.field private skipExisting:Z

.field private final sources:Lorg/apache/tools/ant/types/resources/Resources;

.field private tryGzipEncoding:Z

.field private uname:Ljava/lang/String;

.field private useTimestamp:Z

.field private userAgent:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Get;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 77
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    .line 79
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    .line 80
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->quiet:Z

    .line 81
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    .line 82
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    .line 83
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get;->uname:Ljava/lang/String;

    .line 84
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get;->pword:Ljava/lang/String;

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->numberRetries:I

    .line 87
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->skipExisting:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->httpUseCaches:Z

    .line 89
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->tryGzipEncoding:Z

    .line 90
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apache Ant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lorg/apache/tools/ant/Main;->getShortAntVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "ant.http.agent"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->headers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->uname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->pword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->tryGzipEncoding:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/util/Map;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->httpUseCaches:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/taskdefs/Get;)I
    .registers 2

    .line 61
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->numberRetries:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    return v0
.end method

.method static synthetic access$900()Lorg/apache/tools/ant/util/FileUtils;
    .registers 1

    .line 61
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Get;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method private checkAttributes()V
    .registers 5

    const/4 v3, 0x1

    .line 276
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 285
    const-class v2, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    .line 286
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only URLProvider resources are supported"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 311
    :cond_4
    return-void

    .line 298
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The specified destination is not a directory"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 303
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t write to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 293
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 281
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "at least one source is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 277
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "userAgent may not be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMoved(I)Z
    .registers 2

    .line 542
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x133

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 328
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 329
    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 3

    .line 526
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 527
    return-void
.end method

.method public addConfiguredHeader(Lorg/apache/tools/ant/taskdefs/email/Header;)V
    .registers 5

    .line 496
    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/email/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/email/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 500
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->headers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_0
    return-void
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 517
    return-object v0

    .line 513
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public doGet(ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get;->checkAttributes()V

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    const-class v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/Get;->doGet(Ljava/net/URL;Ljava/io/File;ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z

    move-result v0

    return v0
.end method

.method public doGet(Ljava/net/URL;Ljava/io/File;ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->skipExisting:Z

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destination already exists (skipping): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0, p3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 212
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    .line 216
    :cond_0
    if-nez p4, :cond_6

    .line 217
    new-instance v8, Lorg/apache/tools/ant/taskdefs/Get$NullProgress;

    invoke-direct {v8}, Lorg/apache/tools/ant/taskdefs/Get$NullProgress;-><init>()V

    .line 216
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 223
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 228
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local file date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 232
    :cond_1
    const/4 v5, 0x1

    .line 235
    :goto_2
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Get$GetThread;

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v9, p3

    invoke-direct/range {v1 .. v10}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;-><init>(Lorg/apache/tools/ant/taskdefs/Get;Ljava/net/URL;Ljava/io/File;ZJLorg/apache/tools/ant/taskdefs/Get$DownloadProgress;ILjava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->setDaemon(Z)V

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 240
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->start()V

    .line 242
    :try_start_0
    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_3
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The GET operation took longer than "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds, stopping it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;)V

    .line 254
    :cond_2
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->closeStreams()V

    .line 255
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    if-eqz v1, :cond_4

    .line 258
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 235
    :cond_3
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v0, "interrupted waiting for GET to finish"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 256
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_5
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->wasSuccessful()Z

    move-result v0

    goto/16 :goto_0

    :cond_6
    move-object v8, p4

    goto/16 :goto_1
.end method

.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get;->checkAttributes()V

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 109
    const-class v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    .line 110
    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 112
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    .line 113
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 114
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v1, :cond_4

    .line 115
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 120
    const/4 v4, -0x1

    if-le v1, v4, :cond_2

    .line 121
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 147
    :goto_1
    const/4 v1, 0x0

    .line 149
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    if-eqz v4, :cond_3

    .line 150
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v4}, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;-><init>(Ljava/io/PrintStream;)V

    .line 155
    :cond_3
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v0, v4, v1}, Lorg/apache/tools/ant/taskdefs/Get;->doGet(Ljava/net/URL;Ljava/io/File;ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 125
    :cond_4
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v1

    .line 126
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 127
    if-nez v1, :cond_5

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - mapper can\'t handle it"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 132
    :cond_5
    array-length v4, v1

    if-nez v4, :cond_6

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - mapper returns no file name"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 137
    :cond_6
    array-length v4, v1

    if-le v4, v6, :cond_7

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - mapper returns multiple file names"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 142
    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    aget-object v1, v1, v7

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_8
    return-void

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public log(Ljava/lang/String;I)V
    .registers 4

    .line 266
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->quiet:Z

    if-eqz v0, :cond_0

    if-gtz p2, :cond_1

    .line 267
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 269
    :cond_1
    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    .line 338
    return-void
.end method

.method public setHttpUseCaches(Z)V
    .registers 2

    .line 473
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->httpUseCaches:Z

    .line 474
    return-void
.end method

.method public setIgnoreErrors(Z)V
    .registers 2

    .line 365
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    .line 366
    return-void
.end method

.method public setMaxTime(J)V
    .registers 4

    .line 416
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    .line 417
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->pword:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setQuiet(Z)V
    .registers 2

    .line 356
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->quiet:Z

    .line 357
    return-void
.end method

.method public setRetries(I)V
    .registers 4

    .line 430
    if-gtz p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting retries to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " will make the task not even try to reach the URI at all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 435
    :cond_0
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->numberRetries:I

    .line 436
    return-void
.end method

.method public setSkipExisting(Z)V
    .registers 2

    .line 445
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->skipExisting:Z

    .line 446
    return-void
.end method

.method public setSrc(Ljava/net/URL;)V
    .registers 3

    .line 319
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/URLResource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Get;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 320
    return-void
.end method

.method public setTryGzipEncoding(Z)V
    .registers 2

    .line 487
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->tryGzipEncoding:Z

    .line 488
    return-void
.end method

.method public setUseTimestamp(Z)V
    .registers 2

    .line 387
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    .line 388
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2

    .line 458
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->uname:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 346
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    .line 347
    return-void
.end method
