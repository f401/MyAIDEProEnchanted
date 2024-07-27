.class public Lcom/sun/tools/javac/file/Paths;
.super Ljava/lang/Object;
.source "Paths.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/Paths$Path;
    }
.end annotation


# static fields
.field protected static final pathsKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/file/Paths;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bootClassPathRtJar:Ljava/io/File;

.field private classSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

.field private fsInfo:Lcom/sun/tools/javac/file/FSInfo;

.field private inited:Z

.field private lint:Lcom/sun/tools/javac/code/Lint;

.field private log:Lcom/sun/tools/javac/util/Log;

.field private options:Lcom/sun/tools/javac/util/Options;

.field private otherSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

.field private pathsForLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/tools/JavaFileManager$Location;",
            "Lcom/sun/tools/javac/file/Paths$Path;",
            ">;"
        }
    .end annotation
.end field

.field private sourceSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

.field private warn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/file/Paths;->pathsKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/Paths;->inited:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->bootClassPathRtJar:Ljava/io/File;

    .line 118
    sget-object v0, Lcom/sun/tools/javac/file/Paths;->pathsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->pathsForLocation:Ljava/util/Map;

    .line 120
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/Paths;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 121
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2

    .line 70
    invoke-static {p0}, Lcom/sun/tools/javac/file/Paths;->getPathEntries(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/file/Paths;)Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/Paths;->warn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/util/Log;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->log:Lcom/sun/tools/javac/util/Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/tools/javac/file/Paths;Ljava/io/File;)Z
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/Paths;->isArchive(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Iterable;
    .registers 3

    .line 70
    invoke-static {p0, p1}, Lcom/sun/tools/javac/file/Paths;->getPathEntries(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/file/FSInfo;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->fsInfo:Lcom/sun/tools/javac/file/FSInfo;

    return-object v0
.end method

.method private computeAndroidClasspath()Lcom/sun/tools/javac/file/Paths$Path;
    .registers 6

    const/4 v4, 0x1

    .line 283
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    .line 284
    new-instance v2, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v2, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HOME"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/system/android/android.jar"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lcom/sun/tools/javac/file/Paths$Path;->addFile(Ljava/io/File;Z)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HOME"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/classes"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v4}, Lcom/sun/tools/javac/file/Paths$Path;->access$000(Lcom/sun/tools/javac/file/Paths$Path;Ljava/io/File;Z)V

    .line 289
    return-object v2
.end method

.method private computeAnnotationProcessorPath()Lcom/sun/tools/javac/file/Paths$Path;
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    .line 411
    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v1, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addFiles(Ljava/lang/String;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    goto :goto_0
.end method

.method private computeBootClassPath()Lcom/sun/tools/javac/file/Paths$Path;
    .registers 4

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->bootClassPathRtJar:Ljava/io/File;

    .line 317
    new-instance v1, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v1, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    .line 319
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    .line 321
    const-string v2, "BOOTCLASSPATH"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addFiles(Ljava/lang/String;)Lcom/sun/tools/javac/file/Paths$Path;

    .line 359
    return-object v1
.end method

.method private computeSourcePath()Lcom/sun/tools/javac/file/Paths$Path;
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->SOURCEPATH:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    .line 394
    if-nez v0, :cond_0

    .line 395
    const-string v0, "."

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v1

    .line 399
    if-eqz v1, :cond_1

    .line 400
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOURCE CLASS PATH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    :cond_1
    if-nez v0, :cond_2

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v1, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addFiles(Ljava/lang/String;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    goto :goto_0
.end method

.method private computeUserClassPath()Lcom/sun/tools/javac/file/Paths$Path;
    .registers 5

    .line 364
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    .line 367
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->CLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    .line 370
    if-nez v0, :cond_0

    const-string v0, "CLASSPATH"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    :cond_0
    if-nez v0, :cond_1

    const-string v0, "."

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_2

    .line 383
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER CLASS PATH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    :cond_2
    new-instance v1, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v1, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    .line 387
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/file/Paths$Path;->expandJarClassPaths(Z)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/file/Paths$Path;->emptyPathDefault(Ljava/io/File;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v1

    .line 389
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addFiles(Ljava/lang/String;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    .line 386
    return-object v0
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .registers 5

    .line 212
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/URL;

    const-string v2, "file"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getPathEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/tools/javac/file/Paths;->getPathEntries(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private static getPathEntries(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 158
    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 163
    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 164
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 166
    :cond_0
    if-ge v0, v1, :cond_2

    .line 167
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 171
    goto :goto_0

    .line 168
    :cond_2
    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_3
    return-object v2
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/Paths;
    .registers 2

    .line 130
    sget-object v0, Lcom/sun/tools/javac/file/Paths;->pathsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/Paths;

    .line 131
    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/sun/tools/javac/file/Paths;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/file/Paths;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 133
    :cond_0
    return-object v0
.end method

.method private isArchive(Ljava/io/File;)Z
    .registers 4

    .line 459
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths;->fsInfo:Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/file/FSInfo;->isFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pathToURLs(Ljava/lang/String;)[Ljava/net/URL;
    .registers 7

    const/4 v1, 0x0

    .line 185
    new-instance v2, Ljava/util/StringTokenizer;

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v3, v0, [Ljava/net/URL;

    move v0, v1

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/sun/tools/javac/file/Paths;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v4

    .line 190
    if-eqz v4, :cond_0

    .line 191
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    array-length v2, v3

    if-eq v2, v0, :cond_2

    .line 195
    new-array v2, v0, [Ljava/net/URL;

    .line 196
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 197
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public bootClassPath()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 294
    sget-object v0, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public classSearchPath()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->classSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 430
    sget-object v0, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    .line 431
    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v1

    .line 432
    new-instance v2, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v2, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    iput-object v2, p0, Lcom/sun/tools/javac/file/Paths;->classSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    .line 433
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addAll(Ljava/util/Collection;)Z

    .line 434
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->classSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/Paths$Path;->addAll(Ljava/util/Collection;)Z

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->classSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->pathsForLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/Paths$Path;

    .line 240
    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/file/Paths;->setPathForLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->pathsForLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/Paths$Path;

    return-object v0
.end method

.method public isDefaultBootClassPath()Z
    .registers 2

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method isDefaultBootClassPathRtJar(Ljava/io/File;)Z
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->bootClassPathRtJar:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected lazy()V
    .registers 4

    .line 270
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/Paths;->inited:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->lint:Lcom/sun/tools/javac/code/Lint;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->PATH:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/Paths;->warn:Z

    .line 273
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->pathsForLocation:Ljava/util/Map;

    sget-object v1, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-direct {p0}, Lcom/sun/tools/javac/file/Paths;->computeBootClassPath()Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->pathsForLocation:Ljava/util/Map;

    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-direct {p0}, Lcom/sun/tools/javac/file/Paths;->computeUserClassPath()Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->pathsForLocation:Ljava/util/Map;

    sget-object v1, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    invoke-direct {p0}, Lcom/sun/tools/javac/file/Paths;->computeSourcePath()Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/Paths;->inited:Z

    .line 279
    :cond_0
    return-void
.end method

.method otherSearchPath()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->otherSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 442
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    .line 443
    sget-object v1, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v1

    .line 444
    if-nez v1, :cond_1

    .line 445
    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->otherSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    .line 452
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->otherSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 447
    :cond_1
    new-instance v2, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v2, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    iput-object v2, p0, Lcom/sun/tools/javac/file/Paths;->otherSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    .line 448
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->otherSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/Paths$Path;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method setContext(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 232
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->log:Lcom/sun/tools/javac/util/Log;

    .line 233
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->options:Lcom/sun/tools/javac/util/Options;

    .line 234
    invoke-static {p1}, Lcom/sun/tools/javac/code/Lint;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 235
    invoke-static {p1}, Lcom/sun/tools/javac/file/FSInfo;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->fsInfo:Lcom/sun/tools/javac/file/FSInfo;

    .line 236
    return-void
.end method

.method setPathForLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 249
    if-nez p2, :cond_4

    .line 250
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    if-ne p1, v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/sun/tools/javac/file/Paths;->computeUserClassPath()Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths;->pathsForLocation:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void

    .line 252
    :cond_0
    sget-object v0, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    if-ne p1, v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/sun/tools/javac/file/Paths;->computeBootClassPath()Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_1
    sget-object v0, Ljavax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

    if-ne p1, v0, :cond_2

    .line 255
    invoke-direct {p0}, Lcom/sun/tools/javac/file/Paths;->computeAnnotationProcessorPath()Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_2
    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    if-ne p1, v0, :cond_3

    .line 257
    invoke-direct {p0}, Lcom/sun/tools/javac/file/Paths;->computeSourcePath()Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :cond_4
    new-instance v1, Lcom/sun/tools/javac/file/Paths$Path;

    invoke-direct {v1, p0}, Lcom/sun/tools/javac/file/Paths$Path;-><init>(Lcom/sun/tools/javac/file/Paths;)V

    .line 263
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 264
    iget-boolean v3, p0, Lcom/sun/tools/javac/file/Paths;->warn:Z

    invoke-virtual {v1, v0, v3}, Lcom/sun/tools/javac/file/Paths$Path;->addFile(Ljava/io/File;Z)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public sourcePath()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 304
    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/Paths$Path;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    .line 307
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public sourceSearchPath()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->sourceSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 420
    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    .line 421
    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v1

    .line 422
    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths;->sourceSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths;->sourceSearchPath:Lcom/sun/tools/javac/file/Paths$Path;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 422
    goto :goto_0
.end method

.method public userClassPath()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 299
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
