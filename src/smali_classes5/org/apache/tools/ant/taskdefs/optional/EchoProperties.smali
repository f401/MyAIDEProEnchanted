.class public Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;
.super Lorg/apache/tools/ant/Task;
.source "EchoProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;,
        Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final PROPERTIES:Ljava/lang/String; = "properties"

.field private static final PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field private destfile:Ljava/io/File;

.field private failonerror:Z

.field private format:Ljava/lang/String;

.field private inFile:Ljava/io/File;

.field private prefix:Ljava/lang/String;

.field private propertySets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PropertySet;",
            ">;"
        }
    .end annotation
.end field

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    .line 124
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    .line 133
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    .line 135
    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    return-void
.end method

.method private createOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 493
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    if-nez v1, :cond_c

    .line 494
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 513
    :goto_b
    return-object v0

    .line 496
    :cond_c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 497
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v1, :cond_24

    .line 501
    const-string v1, "destfile is a directory!"

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    goto :goto_b

    .line 499
    :cond_24
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "destfile is a directory!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 504
    :cond_30
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_56

    .line 505
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v1, :cond_4a

    .line 510
    const-string v1, "Can not write to the specified destfile!"

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    goto :goto_b

    .line 508
    :cond_4a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not write to the specified destfile!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 513
    :cond_56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_b
.end method

.method private static getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .registers 2

    .line 523
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 524
    :catch_9
    move-exception v0

    .line 525
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$saveProperties$0(Ljava/util/Properties;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 374
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$sortProperties$1(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;
    .registers 5

    .line 430
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;)V

    return-object v0
.end method

.method private sortProperties(Ljava/util/Properties;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;",
            ">;"
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda2;-><init>(Ljava/util/Properties;)V

    .line 430
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    .line 431
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 429
    return-object v0
.end method


# virtual methods
.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->regex:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 269
    :cond_a
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 273
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    if-nez v1, :cond_58

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 275
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 319
    :cond_26
    :goto_26
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda3;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda1;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 322
    :try_start_3d
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->createOutputStream()Ljava/io/OutputStream;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_121

    move-result-object v1

    .line 323
    if-eqz v1, :cond_46

    .line 324
    :try_start_43
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->saveProperties(Ljava/util/Hashtable;Ljava/io/OutputStream;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_11a

    .line 326
    :cond_46
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_121

    .line 332
    :cond_4b
    :goto_4b
    return-void

    .line 264
    :cond_4c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Please specify either prefix or regex, but not both"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 276
    :cond_58
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    if-eqz v1, :cond_26

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 278
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v0, :cond_6c

    .line 282
    const-string v0, "srcfile is a directory!"

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    goto :goto_4b

    .line 280
    :cond_6c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "srcfile is a directory!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 286
    :cond_78
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 287
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v0, :cond_92

    .line 291
    const-string v0, "Can not read from the specified srcfile!"

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    goto :goto_4b

    .line 289
    :cond_92
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not read from the specified srcfile!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 296
    :cond_9e
    :try_start_9e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_aa} :catch_bd
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_aa} :catch_e5

    move-result-object v1

    .line 297
    :try_start_ab
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 298
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 299
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_b6
    .catchall {:try_start_ab .. :try_end_b6} :catchall_de

    .line 300
    if-eqz v1, :cond_26

    :try_start_b8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_b8 .. :try_end_bb} :catch_bd
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_e5

    goto/16 :goto_26

    :catch_bd
    move-exception v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v2, :cond_110

    .line 306
    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    goto/16 :goto_4b

    .line 296
    :catchall_de
    move-exception v0

    if-eqz v1, :cond_e4

    :try_start_e1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_13a

    :cond_e4
    :goto_e4
    :try_start_e4
    throw v0
    :try_end_e5
    .catch Ljava/io/FileNotFoundException; {:try_start_e4 .. :try_end_e5} :catch_bd
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e5} :catch_e5

    .line 308
    :catch_e5
    move-exception v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v2, :cond_106

    .line 314
    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    goto/16 :goto_4b

    .line 312
    :cond_106
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 304
    :cond_110
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 322
    :catchall_11a
    move-exception v0

    if-eqz v1, :cond_120

    :try_start_11d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_13c

    :cond_120
    :goto_120
    :try_start_120
    throw v0
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_121} :catch_121

    .line 326
    :catch_121
    move-exception v0

    .line 327
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v1, :cond_130

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    goto/16 :goto_4b

    .line 328
    :cond_130
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 296
    :catchall_13a
    move-exception v1

    goto :goto_e4

    .line 322
    :catchall_13c
    move-exception v1

    goto :goto_120
.end method

.method protected jdkSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10
    .catchall {:try_start_0 .. :try_end_3} :catchall_1b

    .line 482
    if-eqz p2, :cond_8

    .line 484
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 490
    :cond_8
    :goto_8
    return-void

    .line 485
    :catch_9
    move-exception v0

    .line 486
    const-string v0, "Failed to close output stream"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 479
    :catch_10
    move-exception v0

    .line 480
    :try_start_11
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1b

    .line 482
    :catchall_1b
    move-exception v0

    if-eqz p2, :cond_21

    .line 484
    :try_start_1e
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 489
    :cond_21
    :goto_21
    throw v0

    .line 485
    :catch_22
    move-exception v1

    .line 486
    const-string v1, "Failed to close output stream"

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;)V

    goto :goto_21
.end method

.method protected saveProperties(Ljava/util/Hashtable;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;Ljava/util/List;)V

    .line 374
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda0;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    .line 376
    const-string v0, "text"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 377
    const-string v0, "Ant properties"

    invoke-virtual {p0, v1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->jdkSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 381
    :cond_25
    :goto_25
    return-void

    .line 378
    :cond_26
    const-string v0, "xml"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 379
    invoke-virtual {p0, v1, p2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->xmlSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;)V

    goto :goto_25
.end method

.method public setDestfile(Ljava/io/File;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    .line 161
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 171
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    .line 172
    return-void
.end method

.method public setFormat(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;)V
    .registers 3

    .line 236
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4

    .line 188
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 189
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->prefix:Ljava/lang/String;

    .line 190
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet;-><init>()V

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PropertySet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 192
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->appendPrefix(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 195
    :cond_1c
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .registers 4

    .line 213
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->regex:Ljava/lang/String;

    .line 215
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet;-><init>()V

    .line 216
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PropertySet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 217
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->appendRegex(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 220
    :cond_1c
    return-void
.end method

.method public setSrcfile(Ljava/io/File;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    .line 151
    return-void
.end method

.method protected xmlSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 444
    const-string v0, "properties"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 446
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->sortProperties(Ljava/util/Properties;)Ljava/util/List;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    .line 450
    const-string v4, "property"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 451
    const-string v5, "name"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->access$000(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v5, "value"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->access$100(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_16

    .line 456
    :cond_3e
    :try_start_3e
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_61

    .line 457
    :try_start_45
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\t"

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 459
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_5c

    .line 460
    :try_start_58
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_61

    .line 462
    return-void

    .line 456
    :catchall_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_6a

    :goto_60
    :try_start_60
    throw v0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_61} :catch_61

    .line 460
    :catch_61
    move-exception v0

    .line 461
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to write XML file"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 456
    :catchall_6a
    move-exception v1

    goto :goto_60
.end method
