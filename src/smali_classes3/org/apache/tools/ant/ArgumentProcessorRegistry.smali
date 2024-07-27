.class public Lorg/apache/tools/ant/ArgumentProcessorRegistry;
.super Ljava/lang/Object;
.source "ArgumentProcessorRegistry.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ARGUMENT_PROCESSOR_REPOSITORY:Ljava/lang/String; = "ant.argument-processor-repo.debug"

.field private static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.tools.ant.ArgumentProcessor"

.field private static instance:Lorg/apache/tools/ant/ArgumentProcessorRegistry;


# instance fields
.field private processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-string v0, "true"

    const-string v1, "ant.argument-processor-repo.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->DEBUG:Z

    .line 56
    new-instance v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    invoke-direct {v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->instance:Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->processors:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->collectArgumentProcessors()V

    .line 66
    return-void
.end method

.method private collectArgumentProcessors()V
    .registers 5

    .line 74
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    const-string v1, "META-INF/services/org.apache.tools.ant.ArgumentProcessor"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 77
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 79
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessorByService(Ljava/io/InputStream;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load ArgumentProcessor from service META-INF/services/org.apache.tools.ant.ArgumentProcessor ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-boolean v1, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 84
    :cond_1
    :try_start_1
    const-string v0, "META-INF/services/org.apache.tools.ant.ArgumentProcessor"

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessorByService(Ljava/io/InputStream;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;
    .registers 1

    .line 61
    sget-object v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->instance:Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    return-object v0
.end method

.method private getProcessor(Ljava/lang/Class;)Lorg/apache/tools/ant/ArgumentProcessor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;)",
            "Lorg/apache/tools/ant/ArgumentProcessor;"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ArgumentProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The argument processor class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be instantiated with a default constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getProcessor(Ljava/lang/String;)Lorg/apache/tools/ant/ArgumentProcessor;
    .registers 5

    .line 113
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/Class;)Lorg/apache/tools/ant/ArgumentProcessor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument processor class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getProcessorByService(Ljava/io/InputStream;)Lorg/apache/tools/ant/ArgumentProcessor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 149
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/String;)Lorg/apache/tools/ant/ArgumentProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 154
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getProcessors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->processors:Ljava/util/List;

    return-object v0
.end method

.method public registerArgumentProcessor(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/Class;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V

    .line 108
    return-void
.end method

.method public registerArgumentProcessor(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/String;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V

    .line 102
    return-void
.end method

.method public registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V
    .registers 5

    .line 136
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->processors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-boolean v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument processor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
