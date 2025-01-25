.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "XSLTProcess.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/XSLTLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final PROCESSOR_TRAX:Ljava/lang/String; = "trax"


# instance fields
.field private baseDir:Ljava/io/File;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private destDir:Ljava/io/File;

.field private factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

.field private failOnError:Z

.field private failOnNoResources:Z

.field private failOnTransformationError:Z

.field private fileDirParameter:Ljava/lang/String;

.field private fileNameParameter:Ljava/lang/String;

.field private force:Z

.field private inFile:Ljava/io/File;

.field private liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private outFile:Ljava/io/File;

.field private final outputProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;",
            ">;"
        }
    .end annotation
.end field

.field private performDirectoryScan:Z

.field private processor:Ljava/lang/String;

.field private final resources:Lorg/apache/tools/ant/types/resources/Union;

.field private reuseLoadedStylesheet:Z

.field private stylesheetLoaded:Z

.field private suppressWarnings:Z

.field private final sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

.field private targetExtension:Ljava/lang/String;

.field private traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

.field private useImplicitFileset:Z

.field private final xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

.field private xpath:Ljavax/xml/xpath/XPath;

.field private xpathFactory:Ljavax/xml/xpath/XPathFactory;

.field private xslFile:Ljava/lang/String;

.field private xslResource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 85
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    .line 88
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 91
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    .line 97
    const-string v0, ".html"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->targetExtension:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileNameParameter:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->params:Ljava/util/List;

    .line 109
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    .line 112
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outFile:Ljava/io/File;

    .line 118
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 126
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 129
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    .line 132
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outputProperties:Ljava/util/List;

    .line 135
    new-instance v0, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/XMLCatalog;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    .line 142
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->performDirectoryScan:Z

    .line 148
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    .line 154
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->reuseLoadedStylesheet:Z

    .line 166
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 173
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 180
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 187
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->useImplicitFileset:Z

    .line 194
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->suppressWarnings:Z

    .line 201
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnTransformationError:Z

    .line 208
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    .line 216
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnNoResources:Z

    .line 236
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->targetExtension:Ljava/lang/String;

    return-object v0
.end method

.method private checkDest()V
    .registers 2

    .line 763
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    if-nez v0, :cond_9

    .line 764
    const-string v0, "destdir attributes must be set!"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    .line 766
    :cond_9
    return-void
.end method

.method private ensureDirectoryFor(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 891
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    .line 896
    :cond_2e
    return-void
.end method

.method private evaluateParam(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 1319
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getType()Ljava/lang/String;

    move-result-object v2

    .line 1320
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getExpression()Ljava/lang/String;

    move-result-object v1

    .line 1324
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1325
    :cond_10
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1334
    :goto_12
    sget-object v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$1;->$SwitchMap$org$apache$tools$ant$taskdefs$XSLTProcess$ParamType:[I

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8e

    .line 1346
    sget-object v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_TYPES:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    .line 1347
    if-eqz v0, :cond_76

    .line 1350
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v2, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v1

    .line 1352
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    :goto_32
    return-object v0

    .line 1328
    :cond_33
    :try_start_33
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_12

    .line 1329
    :catch_38
    move-exception v0

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid XSLT parameter type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1344
    :pswitch_50  #0x5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_32

    .line 1342
    :pswitch_59  #0x4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_32

    .line 1340
    :pswitch_62  #0x3
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_32

    .line 1338
    :pswitch_6b  #0x2
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_32

    :pswitch_74  #0x1
    move-object v0, v1

    .line 1336
    goto :goto_32

    .line 1348
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid XSLT parameter type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1334
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_74  #00000001
        :pswitch_6b  #00000002
        :pswitch_62  #00000003
        :pswitch_59  #00000004
        :pswitch_50  #00000005
    .end packed-switch
.end method

.method private loadClass(Ljava/lang/String;)Ljava/lang/Class;
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

    .line 718
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setupLoader()V

    .line 719
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-nez v0, :cond_c

    .line 720
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 722
    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_b
.end method

.method private process(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x2

    .line 860
    :try_start_1
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 864
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    if-nez v2, :cond_7e

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_7e

    .line 865
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_ac

    .line 866
    :cond_7e
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->ensureDirectoryFor(Ljava/io/File;)V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 868
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->configureLiaison(Lorg/apache/tools/ant/types/Resource;)V

    .line 869
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setLiaisonDynamicFileParameters(Lorg/apache/tools/ant/taskdefs/XSLTLiaison;Ljava/io/File;)V

    .line 870
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-interface {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->transform(Ljava/io/File;Ljava/io/File;)V

    .line 882
    :goto_ab
    return-void

    .line 872
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping input file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it is older than output file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and so is the stylesheet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d1} :catch_d2

    goto :goto_ab

    .line 875
    :catch_d2
    move-exception v0

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 877
    if-eqz p2, :cond_ec

    .line 878
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 880
    :cond_ec
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleTransformationError(Ljava/lang/Exception;)V

    goto :goto_ab
.end method

.method private process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 806
    .line 809
    :try_start_1
    invoke-virtual {p4}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v4

    .line 810
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " it is a directory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 848
    :cond_2a
    :goto_2a
    return-void

    .line 816
    :cond_2b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_7c

    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;Lorg/apache/tools/ant/taskdefs/XSLTProcess$1;)V

    .line 819
    :goto_35
    invoke-interface {v0, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_3e

    array-length v2, v0

    if-nez v2, :cond_81

    .line 821
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " it cannot get mapped to output."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_5b

    goto :goto_2a

    .line 838
    :catch_5b
    move-exception v0

    .line 841
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 842
    if-eqz v1, :cond_78

    .line 843
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 845
    :cond_78
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleTransformationError(Ljava/lang/Exception;)V

    goto :goto_2a

    .line 817
    :cond_7c
    :try_start_7c
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    goto :goto_35

    .line 824
    :cond_81
    array-length v2, v0

    const/4 v6, 0x1

    if-le v2, v6, :cond_a2

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " its mapping is ambiguous."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    goto :goto_2a

    .line 828
    :cond_a2
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-direct {v2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_aa} :catch_5b

    .line 830
    :try_start_aa
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    if-nez v0, :cond_c2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-gtz v0, :cond_c2

    .line 831
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_2a

    .line 832
    :cond_c2
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->ensureDirectoryFor(Ljava/io/File;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0, p4}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->configureLiaison(Lorg/apache/tools/ant/types/Resource;)V

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setLiaisonDynamicFileParameters(Lorg/apache/tools/ant/taskdefs/XSLTLiaison;Ljava/io/File;)V

    .line 836
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-interface {v0, v3, v2}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->transform(Ljava/io/File;Ljava/io/File;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ee} :catch_f0

    goto/16 :goto_2a

    .line 838
    :catch_f0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5c
.end method

.method private processResources(Lorg/apache/tools/ant/types/Resource;)V
    .registers 7

    .line 775
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 776
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 779
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 780
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    .line 781
    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 782
    if-eqz v0, :cond_41

    .line 783
    invoke-static {v0}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v2

    .line 785
    if-nez v2, :cond_41

    .line 786
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 789
    :goto_3a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_6

    .line 791
    :cond_40
    return-void

    :cond_41
    move-object v0, v1

    goto :goto_3a
.end method

.method private resolveProcessor(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    .line 700
    const-string v0, "trax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 701
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 707
    :goto_10
    return-void

    .line 704
    :cond_11
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 705
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    goto :goto_10
.end method

.method private setLiaisonDynamicFileParameters(Lorg/apache/tools/ant/taskdefs/XSLTLiaison;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileNameParameter:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1369
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 1372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    invoke-static {v0, p2}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1376
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-interface {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_31
    return-void

    .line 1377
    :cond_32
    const-string v0, "."

    goto :goto_2e
.end method

.method private setupLoader()V
    .registers 3

    .line 731
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-nez v0, :cond_17

    .line 732
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 733
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->setThreadContextLoader()V

    .line 735
    :cond_17
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 291
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 292
    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 324
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 325
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 326
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->addMapper(Lorg/apache/tools/ant/types/Mapper;)V

    .line 327
    return-void
.end method

.method public addConfiguredStyle(Lorg/apache/tools/ant/types/resources/Resources;)V
    .registers 4

    .line 300
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 301
    const-string v0, "The style element must be specified with exactly one nested resource."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    .line 306
    :goto_c
    return-void

    .line 304
    :cond_d
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setXslResource(Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_c
.end method

.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .registers 3

    .line 568
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V

    .line 569
    return-void
.end method

.method public addMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 3

    .line 276
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_a

    .line 277
    const-string v0, "Cannot define more than one mapper"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    .line 281
    :goto_9
    return-void

    .line 279
    :cond_a
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    goto :goto_9
.end method

.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .registers 3

    .line 650
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 651
    return-void
.end method

.method public addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 660
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 661
    return-void
.end method

.method protected configureLiaison(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1241
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>()V

    .line 1242
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1243
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->setFile(Ljava/io/File;)V

    .line 1244
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->configureLiaison(Lorg/apache/tools/ant/types/Resource;)V

    .line 1245
    return-void
.end method

.method protected configureLiaison(Lorg/apache/tools/ant/types/Resource;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 1255
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->reuseLoadedStylesheet:Z

    if-eqz v1, :cond_b

    .line 1305
    :cond_a
    :goto_a
    return-void

    .line 1258
    :cond_b
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 1261
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading stylesheet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1264
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    instance-of v2, v1, Lorg/apache/tools/ant/taskdefs/XSLTLiaison2;

    if-eqz v2, :cond_2d

    .line 1265
    check-cast v1, Lorg/apache/tools/ant/taskdefs/XSLTLiaison2;

    invoke-interface {v1, p0}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison2;->configure(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    .line 1267
    :cond_2d
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    instance-of v2, v1, Lorg/apache/tools/ant/taskdefs/XSLTLiaison3;

    if-eqz v2, :cond_7d

    .line 1270
    check-cast v1, Lorg/apache/tools/ant/taskdefs/XSLTLiaison3;

    invoke-interface {v1, p1}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison3;->setStylesheet(Lorg/apache/tools/ant/types/Resource;)V

    .line 1285
    :goto_38
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3e
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;

    .line 1286
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->shouldUse()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1287
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->evaluateParam(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;)Ljava/lang/Object;

    move-result-object v3

    .line 1288
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    instance-of v5, v2, Lorg/apache/tools/ant/taskdefs/XSLTLiaison4;

    if-eqz v5, :cond_91

    .line 1289
    check-cast v2, Lorg/apache/tools/ant/taskdefs/XSLTLiaison4;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison4;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_63} :catch_64

    goto :goto_3e

    .line 1301
    :catch_64
    move-exception v1

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to transform using stylesheet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1303
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleTransformationError(Ljava/lang/Exception;)V

    goto :goto_a

    .line 1275
    :cond_7d
    :try_start_7d
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 1277
    if-eqz v1, :cond_e5

    .line 1278
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->setStylesheet(Ljava/io/File;)V

    goto :goto_38

    .line 1291
    :cond_91
    if-eqz v3, :cond_97

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_a3

    .line 1292
    :cond_97
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-interface {v2, v5, v1}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1294
    :cond_a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XSLTLiaison \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' supports only String parameters. Converting parameter \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' to its String value \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1294
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1297
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 1280
    :cond_e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accepts the stylesheet only as a file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_103} :catch_64

    goto/16 :goto_a
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 525
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 526
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 528
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createFactory()Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    if-eqz v0, :cond_c

    .line 1388
    const-string v0, "\'factory\' element must be unique"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    .line 1392
    :goto_9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    return-object v0

    .line 1390
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    goto :goto_9
.end method

.method public createOutputProperty()Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;
    .registers 3

    .line 1166
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;-><init>()V

    .line 1167
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outputProperties:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    return-object v0
.end method

.method public createParam()Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;
    .registers 3

    .line 957
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;-><init>()V

    .line 958
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    return-object v0
.end method

.method public createTrace()Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;
    .registers 3

    .line 674
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    if-nez v0, :cond_c

    .line 677
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    .line 678
    return-object v0

    .line 675
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t have more than one trace configuration"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 337
    const-string v0, "style"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 338
    const-string v0, "Warning: the task name <style> is deprecated. Use <xslt> instead."

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 341
    :cond_14
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_24

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 347
    const-string v0, "specify the stylesheet either as a filename in style attribute or as a nested resource"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    .line 457
    :goto_23
    return-void

    .line 350
    :cond_24
    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 351
    const-string v0, "specify the stylesheet either as a filename in style attribute or as a nested resource but not as both"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    goto :goto_23

    .line 354
    :cond_30
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_56

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    goto :goto_23

    .line 359
    :cond_56
    :try_start_56
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setupLoader()V

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 362
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->setSystem()V

    .line 366
    :cond_66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    if-nez v0, :cond_74

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 369
    :cond_74
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getLiaison()Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 372
    instance-of v2, v0, Lorg/apache/tools/ant/taskdefs/XSLTLoggerAware;

    if-eqz v2, :cond_83

    .line 373
    check-cast v0, Lorg/apache/tools/ant/taskdefs/XSLTLoggerAware;

    invoke-interface {v0, p0}, Lorg/apache/tools/ant/taskdefs/XSLTLoggerAware;->setLogger(Lorg/apache/tools/ant/taskdefs/XSLTLogger;)V

    .line 375
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    if-eqz v0, :cond_123

    .line 380
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d1

    .line 382
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 388
    const-string v2, "DEPRECATED - the \'style\' attribute should be relative to the project\'s"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;)V

    .line 389
    const-string v2, "             basedir, not the tasks\'s basedir."

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;)V

    move-object v2, v0

    .line 393
    :cond_d1
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>()V

    .line 394
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 395
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/resources/FileResource;->setFile(Ljava/io/File;)V

    move-object v3, v0

    .line 401
    :goto_e1
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_127

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stylesheet "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_56 .. :try_end_100} :catchall_227

    .line 446
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_10e

    .line 447
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 449
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 451
    :cond_10e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_11b

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 454
    :cond_11b
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 455
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 456
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    goto/16 :goto_23

    .line 398
    :cond_123
    :try_start_123
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    move-object v3, v0

    goto :goto_e1

    .line 407
    :cond_127
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    if-eqz v0, :cond_155

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outFile:Ljava/io/File;

    if-eqz v2, :cond_155

    .line 408
    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V
    :try_end_132
    .catchall {:try_start_123 .. :try_end_132} :catchall_227

    .line 446
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_140

    .line 447
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 449
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 451
    :cond_140
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 454
    :cond_14d
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 455
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 456
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    goto/16 :goto_23

    .line 417
    :cond_155
    :try_start_155
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->checkDest()V

    .line 420
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->useImplicitFileset:Z

    if-eqz v0, :cond_1cd

    .line 421
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transforming into "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 425
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5
    :try_end_17e
    .catchall {:try_start_155 .. :try_end_17e} :catchall_227

    move v0, v1

    :goto_17f
    if-ge v0, v6, :cond_18d

    aget-object v7, v5, v0

    .line 426
    :try_start_183
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-direct {p0, v8, v7, v9, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_17f

    .line 428
    :cond_18d
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->performDirectoryScan:Z

    if-eqz v0, :cond_201

    .line 430
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5
    :try_end_196
    .catchall {:try_start_183 .. :try_end_196} :catchall_227

    move v0, v1

    :goto_197
    if-ge v0, v6, :cond_201

    aget-object v7, v5, v0

    .line 431
    :try_start_19b
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    invoke-direct {v2, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8
    :try_end_1a7
    .catchall {:try_start_19b .. :try_end_1a7} :catchall_227

    move v2, v1

    :goto_1a8
    if-ge v2, v9, :cond_1ca

    aget-object v10, v8, v2

    .line 432
    :try_start_1ac
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-direct {p0, v11, v10, v12, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a8

    .line 430
    :cond_1ca
    add-int/lit8 v0, v0, 0x1

    goto :goto_197

    .line 437
    :cond_1cd
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_201

    .line 439
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnNoResources:Z

    if-eqz v0, :cond_1de

    .line 440
    const-string v0, "no resources specified"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V
    :try_end_1de
    .catchall {:try_start_1ac .. :try_end_1de} :catchall_227

    .line 446
    :cond_1de
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_1ec

    .line 447
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 449
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 451
    :cond_1ec
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_1f9

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 454
    :cond_1f9
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 455
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 456
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    goto/16 :goto_23

    .line 437
    :cond_201
    :try_start_201
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->processResources(Lorg/apache/tools/ant/types/Resource;)V
    :try_end_204
    .catchall {:try_start_201 .. :try_end_204} :catchall_227

    .line 446
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_212

    .line 447
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 449
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 451
    :cond_212
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_21f

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 454
    :cond_21f
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 455
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 456
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    goto/16 :goto_23

    .line 446
    :catchall_227
    move-exception v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v2, :cond_236

    .line 447
    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 448
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 449
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 451
    :cond_236
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v2

    if-lez v2, :cond_243

    .line 452
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 454
    :cond_243
    iput-object v14, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 455
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 456
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 457
    throw v0
.end method

.method public getFactory()Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
    .registers 2

    .line 904
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    return-object v0
.end method

.method protected getLiaison()Lorg/apache/tools/ant/taskdefs/XSLTLiaison;
    .registers 4

    .line 932
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    if-nez v0, :cond_b

    .line 933
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->processor:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 935
    :try_start_8
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resolveProcessor(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_e

    .line 948
    :cond_b
    :goto_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    return-object v0

    .line 936
    :catch_e
    move-exception v0

    .line 937
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 941
    :cond_13
    :try_start_13
    const-string v0, "trax"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resolveProcessor(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_b

    .line 942
    :catchall_19
    move-exception v0

    .line 943
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 944
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public getOutputProperties()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;",
            ">;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outputProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressWarnings()Z
    .registers 2

    .line 610
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->suppressWarnings:Z

    return v0
.end method

.method public getTraceConfiguration()Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;
    .registers 2

    .line 688
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    return-object v0
.end method

.method public getXMLCatalog()Lorg/apache/tools/ant/types/XMLCatalog;
    .registers 3

    .line 913
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 914
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    return-object v0
.end method

.method protected handleError(Ljava/lang/String;)V
    .registers 4

    .line 1403
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    if-nez v0, :cond_9

    .line 1406
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1407
    return-void

    .line 1404
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected handleError(Ljava/lang/Throwable;)V
    .registers 4

    .line 1419
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    if-nez v0, :cond_1a

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caught an exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1423
    return-void

    .line 1420
    :cond_1a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected handleTransformationError(Ljava/lang/Exception;)V
    .registers 4

    .line 1434
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnTransformationError:Z

    if-nez v0, :cond_1e

    .line 1437
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caught an error during transformation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1439
    return-void

    .line 1435
    :cond_1e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public init()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1223
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->init()V

    .line 1224
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1226
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xpathFactory:Ljavax/xml/xpath/XPathFactory;

    .line 1227
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xpath:Ljavax/xml/xpath/XPath;

    .line 1228
    new-instance v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V

    .line 1230
    return-void
.end method

.method public synthetic lambda$init$0$XSLTProcess(Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 4

    .line 1229
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 2

    .line 477
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 478
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 516
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 517
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 538
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 539
    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    .line 489
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->targetExtension:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 630
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    .line 631
    return-void
.end method

.method public setFailOnNoResources(Z)V
    .registers 2

    .line 640
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnNoResources:Z

    .line 641
    return-void
.end method

.method public setFailOnTransformationError(Z)V
    .registers 2

    .line 620
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnTransformationError:Z

    .line 621
    return-void
.end method

.method public setFileDirParameter(Ljava/lang/String;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public setFileNameParameter(Ljava/lang/String;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileNameParameter:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setForce(Z)V
    .registers 2

    .line 467
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    .line 468
    return-void
.end method

.method public setIn(Ljava/io/File;)V
    .registers 2

    .line 754
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    .line 755
    return-void
.end method

.method public setOut(Ljava/io/File;)V
    .registers 2

    .line 744
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outFile:Ljava/io/File;

    .line 745
    return-void
.end method

.method public setProcessor(Ljava/lang/String;)V
    .registers 2

    .line 547
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->processor:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public setReloadStylesheet(Z)V
    .registers 3

    .line 266
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->reuseLoadedStylesheet:Z

    .line 267
    return-void
.end method

.method public setScanIncludedDirectories(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->performDirectoryScan:Z

    .line 255
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setSuppressWarnings(Z)V
    .registers 2

    .line 600
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->suppressWarnings:Z

    .line 601
    return-void
.end method

.method public setUseImplicitFileset(Z)V
    .registers 2

    .line 559
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->useImplicitFileset:Z

    .line 560
    return-void
.end method

.method public setXslResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    .line 315
    return-void
.end method
