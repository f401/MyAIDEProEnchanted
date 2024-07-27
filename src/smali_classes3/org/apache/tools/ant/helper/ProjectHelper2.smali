.class public Lorg/apache/tools/ant/helper/ProjectHelper2;
.super Lorg/apache/tools/ant/ProjectHelper;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$MainHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final REFID_CONTEXT:Ljava/lang/String; = "ant.parsing.context"

.field public static final REFID_TARGETS:Ljava/lang/String; = "ant.targets"

.field private static elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

.field private static mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

.field private static projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

.field private static targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 71
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 72
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$MainHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$MainHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 73
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 81
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectHelper;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/apache/tools/ant/util/FileUtils;
    .registers 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getElementHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 1

    .line 367
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getMainHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 1

    .line 319
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getProjectHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 1

    .line 335
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getTargetHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 1

    .line 351
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static setElementHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .registers 1

    .line 375
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 376
    return-void
.end method

.method protected static setMainHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .registers 1

    .line 327
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 328
    return-void
.end method

.method protected static setProjectHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .registers 1

    .line 343
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 344
    return-void
.end method

.method protected static setTargetHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .registers 1

    .line 359
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 360
    return-void
.end method


# virtual methods
.method public canParseAntlibDescriptor(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2;->getImportStack()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 152
    const-string v0, "ant.parsing.context"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/helper/AntXMLContext;

    .line 154
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 156
    const-string v1, "ant.parsing.context"

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v1, "ant.targets"

    invoke-virtual {v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->getTargets()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2;->getImportStack()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 161
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->setIgnoreProjectTag(Z)V

    .line 162
    invoke-virtual {v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object v3

    .line 164
    invoke-virtual {v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v4

    .line 166
    :try_start_0
    new-instance v1, Lorg/apache/tools/ant/Target;

    invoke-direct {v1}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 167
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 168
    const-string v5, ""

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    .line 170
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    .line 171
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 172
    new-instance v5, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;

    sget-object v6, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-direct {v5, v0, v6}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;-><init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V

    invoke-virtual {p0, p1, p2, v5}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V

    .line 173
    invoke-virtual {v1}, Lorg/apache/tools/ant/Target;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    .line 176
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 177
    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    .line 189
    :goto_0
    return-void

    .line 175
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    .line 176
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 177
    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    .line 178
    throw v1

    .line 181
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    .line 182
    new-instance v1, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;

    sget-object v2, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;-><init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V

    .line 184
    invoke-virtual {v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->execute()V

    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/helper/ProjectHelper2;->resolveExtensionOfAttributes(Lorg/apache/tools/ant/Project;)V

    goto :goto_0
.end method

.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 202
    invoke-static {p3}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->access$000(Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)Lorg/apache/tools/ant/helper/AntXMLContext;

    move-result-object v4

    .line 204
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 209
    check-cast v0, Ljava/io/File;

    move-object v2, v3

    move-object v1, v0

    .line 223
    :goto_0
    if-eqz v1, :cond_5

    .line 224
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 225
    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setBuildFile(Ljava/io/File;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_1
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNamespaceXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 249
    if-eqz v1, :cond_6

    .line 251
    sget-object v2, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    move-object v1, v2

    .line 268
    :goto_2
    :try_start_1
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 269
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v2, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 272
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing buildfile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with URI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 273
    if-eqz v3, :cond_8

    const-string v1, " from a zip file"

    :goto_3
    :try_start_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    .line 272
    const/4 v6, 0x3

    :try_start_3
    invoke-virtual {p1, v1, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 276
    invoke-interface {v5, p3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 277
    invoke-interface {v5, p3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 278
    invoke-interface {v5, p3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 279
    invoke-interface {v5, p3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 280
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 310
    invoke-static {v3}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    .line 311
    return-void

    .line 210
    :cond_1
    instance-of v0, p2, Ljava/net/URL;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 211
    check-cast v0, Ljava/net/URL;

    move-object v2, v0

    move-object v1, v3

    goto :goto_0

    .line 212
    :cond_2
    instance-of v0, p2, Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 213
    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 214
    if-eqz v0, :cond_3

    .line 215
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    move-object v2, v3

    goto/16 :goto_0

    :cond_3
    move-object v0, p2

    .line 217
    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    const-class v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    .line 218
    if-eqz v0, :cond_4

    .line 219
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v0

    move-object v2, v0

    move-object v1, v3

    goto/16 :goto_0

    :cond_4
    move-object v2, v3

    move-object v1, v3

    .line 223
    goto/16 :goto_0

    .line 227
    :cond_5
    if-eqz v2, :cond_e

    .line 229
    const/4 v0, 0x0

    :try_start_4
    check-cast v0, Ljava/io/File;

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setBuildFile(Ljava/io/File;)V

    .line 230
    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->setBuildFile(Ljava/net/URL;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_a

    .line 233
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 254
    :cond_6
    :try_start_5
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v4, "!/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 256
    const-string v6, "jar:file"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    if-le v4, v6, :cond_7

    .line 257
    new-instance v2, Lorg/apache/tools/zip/ZipFile;

    .line 258
    invoke-static {v1}, Lorg/apache/tools/ant/launch/Locator;->fromJarURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v2, v6, v7}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 259
    add-int/lit8 v4, v4, 0x2

    :try_start_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_6
    .catch Lorg/xml/sax/SAXParseException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v4

    move-object v3, v2

    goto/16 :goto_2

    .line 262
    :cond_7
    :try_start_7
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 263
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 264
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_2

    .line 273
    :cond_8
    const-string v1, ""

    goto/16 :goto_3

    .line 305
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 306
    :goto_4
    :try_start_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading project file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 309
    :catchall_0
    move-exception v2

    move-object v0, v3

    move-object v1, v4

    :goto_5
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 310
    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    .line 311
    throw v2

    .line 302
    :catch_1
    move-exception v1

    move-object v2, v1

    .line 303
    :goto_6
    :try_start_9
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoding of project file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is invalid."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 300
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 301
    :goto_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 294
    :catch_3
    move-exception v0

    move-object v1, v0

    .line 295
    :goto_8
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 296
    instance-of v2, v0, Lorg/apache/tools/ant/BuildException;

    if-nez v2, :cond_b

    .line 299
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_a

    :goto_9
    invoke-direct {v2, v5, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 281
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 282
    :goto_a
    new-instance v2, Lorg/apache/tools/ant/Location;

    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v5

    .line 283
    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v6

    invoke-direct {v2, v0, v5, v6}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 285
    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 286
    instance-of v5, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v5, :cond_c

    .line 287
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    .line 288
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    sget-object v5, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne v1, v5, :cond_9

    .line 289
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 291
    :cond_9
    throw v0

    .line 309
    :catchall_1
    move-exception v5

    move-object v1, v3

    move-object v0, v3

    :goto_b
    move-object v2, v5

    goto :goto_5

    .line 305
    :catch_5
    move-exception v5

    move-object v4, v3

    move-object v1, v3

    :goto_c
    move-object v3, v1

    move-object v2, v5

    goto/16 :goto_4

    .line 302
    :catch_6
    move-exception v5

    move-object v4, v3

    move-object v1, v3

    :goto_d
    move-object v3, v1

    move-object v2, v5

    goto :goto_6

    .line 300
    :catch_7
    move-exception v1

    move-object v4, v3

    move-object v0, v3

    :goto_e
    move-object v3, v0

    goto :goto_7

    .line 294
    :catch_8
    move-exception v1

    move-object v4, v3

    move-object v0, v3

    :goto_f
    move-object v3, v0

    goto :goto_8

    :cond_a
    move-object v1, v0

    .line 299
    goto :goto_9

    .line 297
    :cond_b
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 281
    :catch_9
    move-exception v1

    move-object v4, v3

    move-object v0, v3

    :goto_10
    move-object v3, v0

    goto :goto_a

    .line 293
    :cond_c
    new-instance v5, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_d

    :goto_11
    invoke-direct {v5, v6, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_d
    move-object v1, v0

    goto :goto_11

    .line 231
    :catch_a
    move-exception v0

    .line 232
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported by this plugin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :catch_b
    move-exception v1

    move-object v4, v3

    move-object v0, v2

    goto :goto_10

    :catch_c
    move-exception v1

    move-object v0, v3

    goto :goto_10

    .line 294
    :catch_d
    move-exception v1

    move-object v4, v3

    move-object v0, v2

    goto :goto_f

    :catch_e
    move-exception v1

    move-object v0, v3

    goto :goto_f

    .line 300
    :catch_f
    move-exception v1

    move-object v4, v3

    move-object v0, v2

    goto :goto_e

    :catch_10
    move-exception v1

    move-object v0, v3

    goto :goto_e

    .line 302
    :catch_11
    move-exception v5

    move-object v4, v3

    move-object v1, v2

    goto :goto_d

    :catch_12
    move-exception v5

    move-object v1, v3

    goto :goto_d

    .line 305
    :catch_13
    move-exception v5

    move-object v4, v3

    move-object v1, v2

    goto :goto_c

    :catch_14
    move-exception v5

    move-object v1, v3

    goto :goto_c

    .line 309
    :catchall_2
    move-exception v5

    move-object v1, v3

    move-object v0, v2

    goto/16 :goto_b

    :catchall_3
    move-exception v5

    move-object v1, v4

    move-object v0, v3

    goto/16 :goto_b
.end method

.method public parseAntlibDescriptor(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/UnknownElement;
    .registers 5

    .line 110
    const-class v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    .line 111
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parseUnknownElement(Lorg/apache/tools/ant/Project;Ljava/net/URL;)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported resource type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseUnknownElement(Lorg/apache/tools/ant/Project;Ljava/net/URL;)Lorg/apache/tools/ant/UnknownElement;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/tools/ant/Target;

    invoke-direct {v0}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 130
    new-instance v1, Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 131
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->addTarget(Lorg/apache/tools/ant/Target;)V

    .line 132
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 134
    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;

    sget-object v4, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-direct {v3, v1, v4}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;-><init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V

    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V

    .line 135
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getTasks()[Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 136
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No tasks defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
