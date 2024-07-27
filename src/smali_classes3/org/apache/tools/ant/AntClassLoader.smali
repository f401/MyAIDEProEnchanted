.class public Lorg/apache/tools/ant/AntClassLoader;
.super Ljava/lang/ClassLoader;
.source "AntClassLoader.java"

# interfaces
.implements Lorg/apache/tools/ant/SubBuildListener;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final EOCD_SIG:Lorg/apache/tools/zip/ZipLong;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final IS_ATLEAST_JAVA9:Z

.field private static final MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

.field private static final MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

.field private static final NUMBER_OF_STRINGS:I = 0x100

.field private static final SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/tools/zip/ZipLong;

.field private static pathMap:Ljava/util/Map;
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


# instance fields
.field private ignoreBase:Z

.field private isContextLoaderSaved:Z

.field private jarFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/io/File;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field

.field private final loaderPackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Ljava/lang/ClassLoader;

.field private parentFirst:Z

.field private final pathComponents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private project:Lorg/apache/tools/ant/Project;

.field private savedContextLoader:Ljava/lang/ClassLoader;

.field private final systemPackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 81
    const-string v0, "9"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/AntClassLoader;->IS_ATLEAST_JAVA9:Z

    .line 87
    invoke-static {}, Lorg/apache/tools/ant/AntClassLoader;->registerAsParallelCapable()Z

    .line 88
    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    const-string v0, "java.lang.Runtime$Version"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/io/File;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    const-class v2, Ljava/lang/Runtime;

    const-string v3, "version"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 98
    :goto_0
    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

    .line 99
    sput-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

    .line 252
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->pathMap:Ljava/util/Map;

    .line 1584
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->EOCD_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 1585
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    const-wide/32 v2, 0x30304b50

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/tools/ant/AntClassLoader;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/tools/zip/ZipLong;

    return-void

    .line 101
    :cond_0
    sput-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

    .line 102
    sput-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    .line 239
    iput-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    .line 244
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 285
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    .line 239
    iput-boolean v1, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    .line 244
    iput-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v1, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 277
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/AntClassLoader;->setClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 278
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntClassLoader;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V
    .registers 5

    .line 323
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;)V

    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 327
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 328
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V

    .line 329
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Z)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 361
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    .line 239
    iput-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    .line 244
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 362
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 363
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    .line 364
    iput-boolean p2, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 365
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 206
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    .line 239
    iput-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    .line 244
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 259
    iput-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 264
    iput-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 300
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 301
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 302
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntClassLoader;->setClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V
    .registers 5

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V

    .line 346
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/AntClassLoader;)Ljava/util/Vector;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    return-object v0
.end method

.method private static append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1012
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1013
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda5;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    .line 1012
    return-object v0
.end method

.method private findBaseClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1421
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private findClassInComponents(Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1386
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getClassFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1387
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1388
    :try_start_0
    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/AntClassLoader;->getResourceStream(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1389
    if-eqz v4, :cond_3

    .line 1390
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 1392
    invoke-direct {p0, v4, p1, v0}, Lorg/apache/tools/ant/AntClassLoader;->getClassFromStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1394
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1392
    :cond_1
    return-object v1

    .line 1388
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    throw v0

    .line 1394
    :cond_3
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1396
    :catch_1
    move-exception v1

    .line 1398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (reason: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1402
    :cond_4
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private getCertificates(Ljava/io/File;Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 5

    const/4 v1, 0x0

    .line 1238
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-object v1

    .line 1241
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 1242
    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 1246
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_1
.end method

.method private getClassFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getClassFromStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v5, 0x2000

    const/4 v4, 0x0

    .line 1332
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1333
    new-array v1, v5, [B

    .line 1336
    :goto_0
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1337
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1339
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1340
    invoke-virtual {p0, p3, v0, p2}, Lorg/apache/tools/ant/AntClassLoader;->defineClassFromData(Ljava/io/File;[BLjava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getJarManifest(Ljava/io/File;)Ljava/util/jar/Manifest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 1218
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1225
    :goto_0
    return-object v0

    .line 1221
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 1222
    if-nez v0, :cond_1

    move-object v0, v1

    .line 1223
    goto :goto_0

    .line 1225
    :cond_1
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    goto :goto_0
.end method

.method private getResourceStream(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    const/4 v1, 0x0

    .line 802
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 803
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 806
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    .line 809
    :cond_0
    if-nez v0, :cond_1

    .line 810
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;

    move-result-object v0

    .line 812
    iget-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 820
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 821
    if-eqz v2, :cond_3

    .line 822
    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 814
    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reading resource "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_3
    move-object v0, v1

    .line 829
    goto :goto_0
.end method

.method private getRootLoader()Ljava/lang/ClassLoader;
    .registers 3

    .line 862
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 863
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 866
    :cond_0
    return-object v0
.end method

.method private getUrl(Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    .line 919
    const/4 v0, 0x0

    .line 923
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 924
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getResourceURL(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 925
    if-eqz v0, :cond_0

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded from ant loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 931
    :cond_1
    return-object v0
.end method

.method public static initializeClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    .line 608
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 610
    if-eqz v1, :cond_0

    .line 611
    array-length v0, v1

    if-lez v0, :cond_0

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    .line 612
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    .line 614
    const/4 v2, 0x0

    :try_start_0
    aget-object v1, v1, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isParentFirst(Ljava/lang/String;)Z
    .registers 4

    .line 853
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    .line 854
    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 853
    :goto_0
    return v0

    .line 854
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isZip(Ljava/io/File;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1589
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 1590
    invoke-static {p0, v1}, Lorg/apache/tools/ant/AntClassLoader;->readFully(Ljava/io/File;[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1591
    new-instance v2, Lorg/apache/tools/zip/ZipLong;

    invoke-direct {v2, v1}, Lorg/apache/tools/zip/ZipLong;-><init>([B)V

    .line 1592
    sget-object v1, Lorg/apache/tools/zip/ZipLong;->LFH_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v1, v2}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/tools/ant/AntClassLoader;->EOCD_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 1593
    invoke-virtual {v1, v2}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/tools/zip/ZipLong;->DD_SIG:Lorg/apache/tools/zip/ZipLong;

    .line 1594
    invoke-virtual {v1, v2}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/tools/ant/AntClassLoader;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/tools/zip/ZipLong;

    .line 1595
    invoke-virtual {v1, v2}, Lorg/apache/tools/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1597
    :cond_1
    return v0
.end method

.method private loadBaseResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 785
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 770
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda7;

    .line 771
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 770
    return-object v0
.end method

.method public static newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;
    .registers 5

    .line 1581
    new-instance v0, Lorg/apache/tools/ant/AntClassLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V

    return-object v0
.end method

.method private static newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    .line 1624
    sget-boolean v0, Lorg/apache/tools/ant/AntClassLoader;->IS_ATLEAST_JAVA9:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_ARGS:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/tools/ant/AntClassLoader;->MR_JARFILE_CTOR_RUNTIME_VERSION_VAL:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1625
    :cond_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 1627
    :goto_0
    return-object v0

    :cond_1
    const-class v2, Ljava/util/jar/JarFile;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-static {v2, v0, v3}, Lorg/apache/tools/ant/util/ReflectUtil;->newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    goto :goto_0
.end method

.method private static readFully(Ljava/io/File;[B)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1601
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    .line 1602
    :try_start_0
    array-length v3, p1

    move v1, v0

    .line 1604
    :goto_0
    if-eq v1, v3, :cond_0

    .line 1605
    sub-int v4, v3, v1

    invoke-virtual {v2, p1, v1, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1606
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 1611
    :cond_0
    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 1612
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1611
    :cond_2
    return v0

    .line 1609
    :cond_3
    add-int/2addr v1, v4

    goto :goto_0

    .line 1601
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_1
    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addJavaLibraries()V
    .registers 3

    .line 1545
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJrePackages()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/AntClassLoader;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 1546
    return-void
.end method

.method public addLoaderPackageRoot(Ljava/lang/String;)V
    .registers 6

    .line 658
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->loaderPackages:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 659
    return-void
.end method

.method public addPathComponent(Ljava/io/File;)V
    .registers 3

    .line 498
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addPathElement(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 484
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/AntClassLoader;->addPathFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    return-void

    .line 481
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected addPathFile(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 518
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    sget-object v0, Lorg/apache/tools/ant/AntClassLoader;->pathMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    if-nez v0, :cond_6

    .line 526
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;

    move-result-object v2

    .line 527
    :try_start_0
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 528
    if-nez v0, :cond_3

    .line 533
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 531
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 532
    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 533
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 534
    :cond_4
    if-nez v0, :cond_5

    .line 535
    const-string v0, ""

    .line 537
    :cond_5
    sget-object v2, Lorg/apache/tools/ant/AntClassLoader;->pathMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    sget-object v1, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v1

    .line 542
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 543
    :cond_7
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 545
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping jar library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " since only relative URLs are supported by this loader"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 526
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_8

    :try_start_2
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    :goto_2
    throw v0

    .line 552
    :cond_9
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/launch/Locator;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/AntClassLoader;->isInPath(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 555
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/AntClassLoader;->addPathFile(Ljava/io/File;)V

    goto :goto_1

    .line 526
    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public addSystemPackageRoot(Ljava/lang/String;)V
    .registers 6

    .line 645
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->systemPackages:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 646
    return-void
.end method

.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1466
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 1467
    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1457
    return-void
.end method

.method public cleanup()V
    .registers 3

    monitor-enter p0

    .line 1429
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 1430
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1432
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    .line 1433
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_1

    .line 1434
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 1436
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1437
    monitor-exit p0

    return-void
.end method

.method public close()V
    .registers 1

    .line 1565
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 1566
    return-void
.end method

.method protected defineClassFromData(Ljava/io/File;[BLjava/lang/String;)Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    invoke-virtual {p0, p1, p3}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/io/File;Ljava/lang/String;)V

    .line 1163
    const-class v0, Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    .line 1164
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/AntClassLoader;->getClassFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    sget-object v2, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v2

    .line 1166
    new-instance v3, Ljava/security/CodeSource;

    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/AntClassLoader;->getCertificates(Ljava/io/File;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 1168
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v1

    .line 1171
    new-instance v5, Ljava/security/ProtectionDomain;

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    invoke-direct {v5, v3, v1, p0, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V

    .line 1172
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/AntClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected definePackage(Ljava/io/File;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 1187
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1188
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/AntClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1197
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getJarManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v0

    .line 1199
    if-nez v0, :cond_2

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    .line 1200
    invoke-virtual/range {v0 .. v8}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto :goto_0

    .line 1202
    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/io/File;Ljava/lang/String;Ljava/util/jar/Manifest;)V

    goto :goto_0
.end method

.method protected definePackage(Ljava/io/File;Ljava/lang/String;Ljava/util/jar/Manifest;)V
    .registers 16

    const/4 v1, 0x0

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1267
    invoke-virtual {p3, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v3

    .line 1270
    if-eqz v3, :cond_9

    .line 1271
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 1272
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    sget-object v5, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 1275
    sget-object v6, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 1276
    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    .line 1277
    sget-object v7, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v2

    move-object v8, v4

    move-object v7, v6

    .line 1279
    :goto_0
    invoke-virtual {p3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v11

    .line 1280
    if-eqz v11, :cond_4

    .line 1281
    if-nez v8, :cond_8

    .line 1282
    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v11, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 1284
    :goto_1
    if-nez v0, :cond_7

    .line 1285
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v11, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 1287
    :goto_2
    if-nez v3, :cond_0

    .line 1288
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v11, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1290
    :cond_0
    if-nez v5, :cond_1

    .line 1291
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v11, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 1293
    :cond_1
    if-nez v7, :cond_2

    .line 1294
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v11, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 1296
    :cond_2
    if-nez v9, :cond_6

    .line 1297
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v11, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 1299
    :goto_3
    if-nez v10, :cond_3

    .line 1300
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v11, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    .line 1303
    :cond_3
    :goto_4
    if-eqz v10, :cond_5

    const-string v0, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1305
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object v0, p0

    move-object v1, p2

    .line 1310
    invoke-virtual/range {v0 .. v8}, Lorg/apache/tools/ant/AntClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 1312
    return-void

    :cond_4
    move-object v6, v9

    move-object v4, v0

    move-object v2, v8

    .line 1280
    goto :goto_4

    .line 1306
    :catch_0
    move-exception v0

    :cond_5
    move-object v8, v1

    .line 1310
    goto :goto_5

    :cond_6
    move-object v6, v9

    goto :goto_3

    :cond_7
    move-object v4, v0

    goto :goto_2

    :cond_8
    move-object v2, v8

    goto :goto_1

    :cond_9
    move-object v0, v1

    move-object v3, v1

    move-object v8, v1

    move-object v5, v1

    move-object v7, v1

    move-object v9, v1

    move-object v10, v1

    goto :goto_0
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finding class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 1357
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClassInComponents(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    .line 959
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/AntClassLoader;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    new-instance v1, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;-><init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 995
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 999
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1001
    invoke-static {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    move-result-object v0

    .line 1008
    :goto_1
    return-object v0

    .line 997
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticBackport0;->m()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 1003
    :cond_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-eqz v2, :cond_3

    .line 1004
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    .line 1005
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_1

    .line 1008
    :cond_3
    invoke-static {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->append(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_1
.end method

.method public forceLoadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 679
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 681
    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 684
    :cond_0
    return-object v0
.end method

.method public forceLoadSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force system loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 706
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 708
    if-nez v0, :cond_0

    .line 709
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findBaseClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 711
    :cond_0
    return-object v0
.end method

.method public getClasspath()Ljava/lang/String;
    .registers 5

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 570
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 571
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredParent()Ljava/lang/ClassLoader;
    .registers 2

    .line 1447
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getNamedResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/AntClassLoader;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 7

    const/4 v0, 0x0

    const/4 v4, 0x4

    .line 885
    .line 886
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 887
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 889
    :goto_0
    if-eqz v1, :cond_3

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loaded from parent loader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 894
    :goto_1
    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 896
    iget-boolean v1, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-eqz v1, :cond_5

    .line 897
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_4

    .line 901
    :goto_2
    if-eqz v0, :cond_0

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded from parent loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 905
    :cond_0
    :goto_3
    if-nez v0, :cond_1

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 908
    :cond_1
    return-object v0

    .line 887
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_0

    .line 892
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_1

    .line 897
    :cond_4
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_2

    .line 899
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    const/4 v0, 0x0

    const/4 v4, 0x4

    .line 725
    .line 726
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 727
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadBaseResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 729
    :goto_0
    if-eqz v1, :cond_3

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResourceStream for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loaded from parent loader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 739
    :cond_0
    :goto_1
    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 740
    iget-boolean v1, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-eqz v1, :cond_5

    .line 741
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_4

    .line 747
    :goto_2
    if-eqz v0, :cond_1

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceStream for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded from parent loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 752
    :cond_1
    :goto_3
    if-nez v0, :cond_2

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load ResourceStream for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 755
    :cond_2
    return-object v0

    .line 733
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 734
    if-eqz v1, :cond_0

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResourceStream for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loaded from ant loader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 743
    :cond_4
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;->getRootLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    .line 745
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadBaseResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected getResourceURL(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1030
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 1031
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_4

    .line 1036
    :try_start_1
    sget-object v2, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 1072
    :goto_0
    return-object v0

    .line 1037
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1038
    goto :goto_0

    .line 1042
    :cond_0
    if-nez v0, :cond_2

    .line 1043
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1044
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->isZip(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLASSPATH element "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a JAR."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    move-object v0, v1

    .line 1048
    goto :goto_0

    .line 1050
    :cond_1
    invoke-static {p1}, Lorg/apache/tools/ant/AntClassLoader;->newJarFile(Ljava/io/File;)Ljava/util/jar/JarFile;

    move-result-object v0

    .line 1051
    iget-object v2, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->jarFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 1058
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1059
    if-eqz v0, :cond_4

    .line 1061
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/apache/tools/ant/AntClassLoader;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1062
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 1063
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1053
    goto :goto_0

    .line 1067
    :catch_2
    move-exception v0

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain resource from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    .line 1070
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    :cond_4
    move-object v0, v1

    .line 1072
    goto/16 :goto_0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1560
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getNamedResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected isInPath(Ljava/io/File;)Z
    .registers 3

    .line 1368
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$loadResource$0$AntClassLoader(Ljava/lang/String;Ljava/io/File;)Ljava/io/InputStream;
    .registers 4

    .line 770
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/AntClassLoader;->getResourceStream(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 1102
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_0

    .line 1104
    monitor-exit p0

    .line 1131
    :goto_0
    return-object v0

    .line 1106
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->isParentFirst(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findBaseClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded from parent loader (parentFirst)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1128
    :goto_1
    if-eqz p2, :cond_1

    .line 1129
    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/AntClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1131
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded from ant loader (parentFirst)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1118
    :cond_2
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded from ant loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1120
    :catch_1
    move-exception v0

    .line 1121
    :try_start_6
    iget-boolean v1, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z

    if-nez v1, :cond_3

    .line 1124
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findBaseClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded from parent loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 1122
    :cond_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected log(Ljava/lang/String;I)V
    .registers 4

    .line 433
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 436
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1538
    return-void
.end method

.method public resetThreadContextLoader()V
    .registers 2

    .line 463
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->isContextLoaderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lorg/apache/tools/ant/util/LoaderUtils;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 468
    :cond_0
    return-void
.end method

.method public setClassPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 9

    .line 387
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->pathComponents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 388
    if-eqz p1, :cond_0

    .line 389
    const-string v0, "ignore"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 391
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/AntClassLoader;->addPathElement(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :catch_0
    move-exception v4

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring path element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from classpath due to exception "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/AntClassLoader;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 400
    :cond_0
    return-void
.end method

.method public setIsolated(Z)V
    .registers 3

    monitor-enter p0

    .line 588
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/AntClassLoader;->ignoreBase:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setParent(Ljava/lang/ClassLoader;)V
    .registers 3

    .line 409
    if-nez p1, :cond_0

    const-class v0, Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 410
    return-void
.end method

.method public setParentFirst(Z)V
    .registers 2

    .line 421
    iput-boolean p1, p0, Lorg/apache/tools/ant/AntClassLoader;->parentFirst:Z

    .line 422
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 377
    :cond_0
    return-void
.end method

.method public setThreadContextLoader()V
    .registers 4

    .line 445
    iget-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    if-nez v0, :cond_1

    .line 448
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->isContextLoaderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->savedContextLoader:Ljava/lang/ClassLoader;

    .line 451
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_2

    const-string v1, "only"

    const-string v2, "build.sysclasspath"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 454
    :goto_0
    invoke-static {v0}, Lorg/apache/tools/ant/util/LoaderUtils;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/AntClassLoader;->isContextLoaderSaved:Z

    .line 457
    :cond_0
    return-void

    .line 446
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Context loader has not been reset"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 1479
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader;->project:Lorg/apache/tools/ant/Project;

    if-ne v0, v1, :cond_0

    .line 1480
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 1482
    :cond_0
    return-void
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1493
    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1511
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1502
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1529
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 1520
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AntClassLoader["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->getClasspath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
