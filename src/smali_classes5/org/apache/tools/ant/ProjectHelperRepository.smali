.class public Lorg/apache/tools/ant/ProjectHelperRepository;
.super Ljava/lang/Object;
.source "ProjectHelperRepository.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_PROJECT_HELPER_REPOSITORY:Ljava/lang/String; = "ant.project-helper-repo.debug"

.field private static PROJECTHELPER2_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Lorg/apache/tools/ant/helper/ProjectHelper2;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lorg/apache/tools/ant/ProjectHelperRepository;


# instance fields
.field private helpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-string v0, "true"

    const-string v1, "ant.project-helper-repo.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/ProjectHelperRepository;->DEBUG:Z

    .line 56
    new-instance v0, Lorg/apache/tools/ant/ProjectHelperRepository;

    invoke-direct {v0}, Lorg/apache/tools/ant/ProjectHelperRepository;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/ProjectHelperRepository;->instance:Lorg/apache/tools/ant/ProjectHelperRepository;

    .line 65
    :try_start_15
    const-class v0, Lorg/apache/tools/ant/helper/ProjectHelper2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/ProjectHelperRepository;->PROJECTHELPER2_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_21

    .line 69
    return-void

    .line 66
    :catch_21
    move-exception v0

    .line 68
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ProjectHelperRepository;->helpers:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectHelperRepository;->collectProjectHelpers()V

    .line 78
    return-void
.end method

.method private collectProjectHelpers()V
    .registers 5

    .line 82
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperBySystemProperty()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->registerProjectHelper(Ljava/lang/reflect/Constructor;)V

    .line 87
    :try_start_7
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_75

    .line 89
    const-string v1, "META-INF/services/org.apache.tools.ant.ProjectHelper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 90
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 92
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperByService(Ljava/io/InputStream;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->registerProjectHelper(Ljava/lang/reflect/Constructor;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_3b

    goto :goto_1b

    .line 101
    :catch_3b
    move-exception v0

    .line 102
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-boolean v1, Lorg/apache/tools/ant/ProjectHelperRepository;->DEBUG:Z

    if-eqz v1, :cond_74

    .line 107
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 110
    :cond_74
    :goto_74
    return-void

    .line 96
    :cond_75
    :try_start_75
    const-string v0, "META-INF/services/org.apache.tools.ant.ProjectHelper"

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_74

    .line 99
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperByService(Ljava/io/InputStream;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->registerProjectHelper(Ljava/lang/reflect/Constructor;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_3b

    goto :goto_74
.end method

.method private getHelperConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 218
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 220
    const/4 v0, 0x0

    .line 221
    if-eqz v1, :cond_b

    .line 223
    :try_start_7
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_a} :catch_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_1f

    move-result-object v0

    .line 228
    :cond_b
    :goto_b
    if-nez v0, :cond_11

    .line 229
    :try_start_d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 231
    :cond_11
    const-class v1, Lorg/apache/tools/ant/ProjectHelper;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_1f

    move-result-object v0

    return-object v0

    .line 232
    :catch_1f
    move-exception v0

    .line 233
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 224
    :catch_26
    move-exception v1

    goto :goto_b
.end method

.method public static getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;
    .registers 1

    .line 73
    sget-object v0, Lorg/apache/tools/ant/ProjectHelperRepository;->instance:Lorg/apache/tools/ant/ProjectHelperRepository;

    return-object v0
.end method

.method private getProjectHelperByService(Ljava/io/InputStream;)Ljava/lang/reflect/Constructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;"
        }
    .end annotation

    .line 184
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 189
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 190
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelperConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 199
    :goto_1f
    return-object v0

    .line 192
    :catch_20
    move-exception v0

    .line 193
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-boolean v1, Lorg/apache/tools/ant/ProjectHelperRepository;->DEBUG:Z

    if-eqz v1, :cond_49

    .line 196
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 199
    :cond_49
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private getProjectHelperBySystemProperty()Ljava/lang/reflect/Constructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;"
        }
    .end annotation

    .line 163
    const-string v0, "org.apache.tools.ant.ProjectHelper"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_48

    .line 166
    :try_start_8
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelperConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 176
    :goto_c
    return-object v0

    .line 168
    :catch_d
    move-exception v1

    .line 169
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load ProjectHelper class \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " specified in system property "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "org.apache.tools.ant.ProjectHelper"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    sget-boolean v0, Lorg/apache/tools/ant/ProjectHelperRepository;->DEBUG:Z

    if-eqz v0, :cond_48

    .line 174
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 176
    :cond_48
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static synthetic lambda$getHelpers$2(Ljava/lang/reflect/Constructor;)Lorg/apache/tools/ant/ProjectHelper;
    .registers 3

    .line 295
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 296
    :catch_a
    move-exception v0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to invoke no-arg constructor on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$getProjectHelperForAntlib$1(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/ProjectHelper;)Z
    .registers 3

    .line 269
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/ProjectHelper;->canParseAntlibDescriptor(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getProjectHelperForBuildFile$0(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/ProjectHelper;)Z
    .registers 3

    .line 246
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/ProjectHelper;->canParseBuildFile(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method

.method private registerProjectHelper(Ljava/lang/reflect/Constructor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;)V"
        }
    .end annotation

    .line 152
    if-nez p1, :cond_3

    .line 160
    :goto_2
    return-void

    .line 155
    :cond_3
    sget-boolean v0, Lorg/apache/tools/ant/ProjectHelperRepository;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 156
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProjectHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    :cond_2a
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelperRepository;->helpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public getHelpers()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/stream/Stream$Builder;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lorg/apache/tools/ant/ProjectHelperRepository;->helpers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda1;-><init>(Ljava/util/stream/Stream$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 293
    sget-object v1, Lorg/apache/tools/ant/ProjectHelperRepository;->PROJECTHELPER2_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 300
    const-class v1, Lorg/apache/tools/ant/ProjectHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda2;

    const-class v2, Lorg/apache/tools/ant/ProjectHelper;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method public getProjectHelperForAntlib(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/ProjectHelper;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->iteratorAsStream(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    .line 269
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 272
    if-eqz v0, :cond_49

    .line 276
    sget-boolean v1, Lorg/apache/tools/ant/ProjectHelperRepository;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 277
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProjectHelper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " selected for the antlib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    :cond_48
    return-object v0

    .line 273
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BUG: at least the ProjectHelper2 should have supported the file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProjectHelperForBuildFile(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/ProjectHelper;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->iteratorAsStream(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 249
    if-eqz v0, :cond_49

    .line 253
    sget-boolean v1, Lorg/apache/tools/ant/ProjectHelperRepository;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 254
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProjectHelper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " selected for the build file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_48
    return-object v0

    .line 250
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BUG: at least the ProjectHelper2 should have supported the file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerProjectHelper(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->registerProjectHelper(Ljava/lang/reflect/Constructor;)V
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_a} :catch_b

    .line 148
    return-void

    .line 145
    :catch_b
    move-exception v0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find no-arg constructor in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerProjectHelper(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelperConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->registerProjectHelper(Ljava/lang/reflect/Constructor;)V

    .line 128
    return-void
.end method
