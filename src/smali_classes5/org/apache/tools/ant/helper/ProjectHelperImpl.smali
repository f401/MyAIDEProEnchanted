.class public Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.super Lorg/apache/tools/ant/ProjectHelper;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$DescriptionHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private buildFile:Ljava/io/File;

.field private buildFileParent:Ljava/io/File;

.field private implicitTarget:Lorg/apache/tools/ant/Target;

.field private locator:Lorg/xml/sax/Locator;

.field private parser:Lorg/xml/sax/Parser;

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectHelper;-><init>()V

    .line 93
    new-instance v0, Lorg/apache/tools/ant/Target;

    invoke-direct {v0}, Lorg/apache/tools/ant/Target;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->implicitTarget:Lorg/apache/tools/ant/Target;

    .line 99
    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Parser;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/Locator;)Lorg/xml/sax/Locator;
    .registers 2

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->locator:Lorg/xml/sax/Locator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/tools/ant/util/FileUtils;
    .registers 1

    .line 56
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFileParent:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Target;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->implicitTarget:Lorg/apache/tools/ant/Target;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->handleElement(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->configureId(Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V

    return-void
.end method

.method private configureId(Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V
    .registers 5

    .line 1030
    const-string v0, "id"

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    if-eqz v0, :cond_d

    .line 1032
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v0, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1034
    :cond_d
    return-void
.end method

.method private static handleElement(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 610
    const-string v0, "description"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 612
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DescriptionHandler;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DescriptionHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    .line 618
    :goto_d
    return-void

    .line 613
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 614
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p3, p4}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto :goto_d

    .line 616
    :cond_23
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/TaskContainer;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p3, p4}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto :goto_d
.end method


# virtual methods
.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 111
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_10e

    .line 115
    check-cast p2, Ljava/io/File;

    .line 117
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFile:Ljava/io/File;

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFileParent:Ljava/io/File;

    .line 122
    :try_start_20
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParser()Lorg/xml/sax/Parser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;
    :try_end_26
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_20 .. :try_end_26} :catch_84

    .line 127
    :goto_26
    :try_start_26
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_30
    .catch Lorg/xml/sax/SAXParseException; {:try_start_26 .. :try_end_30} :catch_98
    .catch Lorg/xml/sax/SAXException; {:try_start_26 .. :try_end_30} :catch_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_30} :catch_e6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_30} :catch_dd
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_30} :catch_c1

    move-result-object v1

    .line 128
    :try_start_31
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 130
    invoke-virtual {v2, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsing buildfile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 132
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)V

    .line 133
    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v3, v0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 134
    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v3, v0}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 135
    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v3, v0}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 136
    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v3, v0}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, v2}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_7e
    .catchall {:try_start_31 .. :try_end_7e} :catchall_91

    .line 138
    if-eqz v1, :cond_83

    :try_start_80
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Lorg/xml/sax/SAXParseException; {:try_start_80 .. :try_end_83} :catch_98
    .catch Lorg/xml/sax/SAXException; {:try_start_80 .. :try_end_83} :catch_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_83} :catch_e6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_80 .. :try_end_83} :catch_dd
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_c1

    .line 163
    :cond_83
    return-void

    .line 123
    :catch_84
    move-exception v0

    .line 124
    new-instance v0, Lorg/xml/sax/helpers/XMLReaderAdapter;

    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/helpers/XMLReaderAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    goto :goto_26

    .line 127
    :catchall_91
    move-exception v0

    if-eqz v1, :cond_97

    :try_start_94
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_116

    :cond_97
    :goto_97
    :try_start_97
    throw v0
    :try_end_98
    .catch Lorg/xml/sax/SAXParseException; {:try_start_97 .. :try_end_98} :catch_98
    .catch Lorg/xml/sax/SAXException; {:try_start_97 .. :try_end_98} :catch_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_98} :catch_e6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_97 .. :try_end_98} :catch_dd
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_98} :catch_c1

    .line 138
    :catch_98
    move-exception v0

    move-object v1, v0

    .line 139
    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    .line 140
    new-instance v3, Lorg/apache/tools/ant/Location;

    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v4

    invoke-direct {v3, v0, v2, v4}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 142
    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 143
    instance-of v2, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_104

    .line 144
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    .line 145
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne v1, v2, :cond_c0

    .line 146
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 148
    :cond_c0
    throw v0

    .line 161
    :catch_c1
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading project file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 159
    :catch_dd
    move-exception v0

    .line 160
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Encoding of project file is invalid."

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    :catch_e6
    move-exception v0

    .line 158
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :catch_ed
    move-exception v0

    move-object v1, v0

    .line 152
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 153
    instance-of v2, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_fa

    .line 154
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 156
    :cond_fa
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 150
    :cond_104
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 112
    :cond_10e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only File source supported by default plugin"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :catchall_116
    move-exception v1

    goto :goto_97
.end method
