.class public Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;
.super Lorg/apache/tools/ant/Task;
.source "XMLValidateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;,
        Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;,
        Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field protected static final INIT_FAILED_MSG:Ljava/lang/String; = "Could not start xml validation: "

.field public static final MESSAGE_FILES_VALIDATED:Ljava/lang/String; = " file(s) have been successfully validated."


# instance fields
.field private attributeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected classpath:Lorg/apache/tools/ant/types/Path;

.field protected errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

.field protected failOnError:Z

.field protected file:Ljava/io/File;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field protected lenient:Z

.field private final propertyList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;",
            ">;"
        }
    .end annotation
.end field

.field protected readerClassName:Ljava/lang/String;

.field private readerLoader:Lorg/apache/tools/ant/AntClassLoader;

.field protected warn:Z

.field private xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

.field protected xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 70
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    .line 71
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->warn:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->lenient:Z

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    .line 87
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 89
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;-><init>(Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->attributeList:Ljava/util/Vector;

    .line 99
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->propertyList:Ljava/util/Vector;

    .line 101
    new-instance v0, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/XMLCatalog;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    .line 106
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    return-void
.end method

.method static synthetic access$000()Lorg/apache/tools/ant/util/FileUtils;
    .registers 1

    .line 57
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method private createDefaultReaderOrParser()Ljava/lang/Object;
    .registers 2

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createDefaultReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 451
    :goto_4
    return-object v0

    .line 448
    :catch_5
    move-exception v0

    .line 449
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParser()Lorg/xml/sax/Parser;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .registers 3

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V

    .line 206
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method protected cleanup()V
    .registers 2

    .line 434
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_a

    .line 435
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    .line 438
    :cond_a
    return-void
.end method

.method public createAttribute()Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;
    .registers 3

    .line 227
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;-><init>()V

    .line 228
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->attributeList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 229
    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 178
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 180
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createDTD()Lorg/apache/tools/ant/types/DTDLocation;
    .registers 3

    .line 261
    new-instance v0, Lorg/apache/tools/ant/types/DTDLocation;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/DTDLocation;-><init>()V

    .line 262
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->addDTD(Lorg/apache/tools/ant/types/ResourceLocation;)V

    .line 263
    return-object v0
.end method

.method protected createDefaultReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .line 462
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method public createProperty()Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;
    .registers 3

    .line 239
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;-><init>()V

    .line 240
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->propertyList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 241
    return-object v0
.end method

.method protected createXmlReader()Lorg/xml/sax/XMLReader;
    .registers 6

    const/4 v4, 0x3

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 382
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createDefaultReaderOrParser()Ljava/lang/Object;

    move-result-object v1

    .line 400
    :goto_9
    instance-of v0, v1, Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_58

    move-object v0, v1

    .line 406
    check-cast v0, Lorg/xml/sax/XMLReader;

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using SAX2 reader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 425
    :goto_2c
    return-object v0

    .line 385
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_53

    .line 389
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    .line 390
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 396
    :goto_44
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    .line 393
    :cond_53
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_56} :catch_a6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_56} :catch_c0
    .catch Ljava/lang/InstantiationException; {:try_start_2d .. :try_end_56} :catch_c2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_56} :catch_c4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_56} :catch_c6

    move-result-object v0

    goto :goto_44

    .line 413
    :cond_58
    instance-of v0, v1, Lorg/xml/sax/Parser;

    if-eqz v0, :cond_82

    .line 414
    new-instance v2, Lorg/xml/sax/helpers/ParserAdapter;

    move-object v0, v1

    check-cast v0, Lorg/xml/sax/Parser;

    invoke-direct {v2, v0}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using SAX1 parser "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_2c

    .line 419
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start xml validation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " implements nor SAX1 Parser nor SAX2 XMLReader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :catch_a6
    move-exception v0

    .line 399
    :goto_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start xml validation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 397
    :catch_c0
    move-exception v0

    goto :goto_a7

    :catch_c2
    move-exception v0

    goto :goto_a7

    :catch_c4
    move-exception v0

    goto :goto_a7

    :catch_c6
    move-exception v0

    goto :goto_a7
.end method

.method protected doValidate(Ljava/io/File;)Z
    .registers 7

    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->initValidator()V

    .line 538
    const/4 v0, 0x1

    .line 540
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 541
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->init(Ljava/io/File;)V

    .line 542
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 543
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4a
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_4a} :catch_83
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4a} :catch_6b

    .line 558
    :goto_4a
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->getFailure()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 560
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    if-nez v0, :cond_c3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid XML document"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 567
    :goto_6a
    return v1

    .line 554
    :catch_6b
    move-exception v0

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not validate document "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 546
    :catch_83
    move-exception v0

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught when validating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 548
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    if-nez v2, :cond_da

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;)V

    move v0, v1

    .line 553
    goto :goto_4a

    .line 561
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid XML document."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not validate document "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f1
    move v1, v0

    goto/16 :goto_6a
.end method

.method public execute()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 291
    .line 292
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 297
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    if-eqz v0, :cond_a2

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 299
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->doValidate(Ljava/io/File;)Z

    .line 300
    const/4 v1, 0x1

    .line 311
    :goto_2d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 312
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_6e

    move v2, v3

    :goto_4d
    if-ge v2, v6, :cond_33

    aget-object v7, v5, v2

    .line 314
    :try_start_51
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, v8}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->doValidate(Ljava/io/File;)Z

    .line 316
    add-int/lit8 v1, v1, 0x1

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 293
    :cond_66
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source - a file or a fileset."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catchall {:try_start_51 .. :try_end_6e} :catchall_6e

    .line 321
    :catchall_6e
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->cleanup()V

    .line 322
    throw v0

    .line 302
    :cond_73
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    if-nez v1, :cond_95

    .line 306
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    move v1, v3

    goto :goto_2d

    .line 304
    :cond_95
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_9b
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->onSuccessfulValidation(I)V
    :try_end_9e
    .catchall {:try_start_73 .. :try_end_9e} :catchall_6e

    .line 321
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->cleanup()V

    .line 322
    return-void

    :cond_a2
    move v1, v3

    goto :goto_2d
.end method

.method protected getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    return-object v0
.end method

.method protected getXmlReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .line 282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public init()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 250
    invoke-super {p0}, Lorg/apache/tools/ant/Task;->init()V

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 252
    return-void
.end method

.method protected initValidator()V
    .registers 4

    .line 341
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createXmlReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 343
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 346
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->isSax1Parser()Z

    move-result v0

    if-nez v0, :cond_60

    .line 348
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->lenient:Z

    if-nez v0, :cond_24

    .line 349
    const-string v0, "http://xml.org/sax/features/validation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->setFeature(Ljava/lang/String;Z)V

    .line 352
    :cond_24
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->attributeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;

    .line 353
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->getValue()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->setFeature(Ljava/lang/String;Z)V

    goto :goto_2a

    .line 357
    :cond_42
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->propertyList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;

    .line 358
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 361
    :cond_60
    return-void
.end method

.method protected isSax1Parser()Z
    .registers 2

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    instance-of v0, v0, Lorg/xml/sax/helpers/ParserAdapter;

    return v0
.end method

.method protected onSuccessfulValidation(I)V
    .registers 4

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " file(s) have been successfully validated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 166
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 170
    :goto_6
    return-void

    .line 168
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 190
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 117
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    .line 118
    return-void
.end method

.method protected setFeature(Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 475
    :try_start_1d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_22
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1d .. :try_end_22} :catch_51
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1d .. :try_end_22} :catch_23

    .line 492
    return-void

    .line 484
    :catch_23
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 487
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 476
    :catch_51
    move-exception v0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 479
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t recognize feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    .line 198
    return-void
.end method

.method public setLenient(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->lenient:Z

    .line 143
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 505
    if-eqz p1, :cond_66

    if-eqz p2, :cond_66

    .line 510
    :try_start_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_4 .. :try_end_9} :catch_38
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_4 .. :try_end_9} :catch_a

    .line 527
    return-void

    .line 519
    :catch_a
    move-exception v0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 522
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 511
    :catch_38
    move-exception v0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 514
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t recognize property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 506
    :cond_66
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property name and value must be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWarn(Z)V
    .registers 2

    .line 127
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->warn:Z

    .line 128
    return-void
.end method
