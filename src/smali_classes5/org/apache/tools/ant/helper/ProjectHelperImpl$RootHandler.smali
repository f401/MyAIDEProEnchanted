.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;
.super Lorg/xml/sax/HandlerBase;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RootHandler"
.end annotation


# instance fields
.field helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)V
    .registers 2

    .line 276
    invoke-direct {p0}, Lorg/xml/sax/HandlerBase;-><init>()V

    .line 277
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 278
    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 10

    const/4 v6, 0x1

    .line 291
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolving systemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 293
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 294
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$300()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_c4

    .line 298
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$300()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$400(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 299
    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v4}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$500(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " should be expressed simply as \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for compliance with other XML tools"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {v2, v1, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    move-object v1, v0

    .line 304
    :goto_83
    :try_start_83
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 305
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$300()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_a2} :catch_a3

    .line 313
    :goto_a2
    return-object v0

    .line 307
    :catch_a3
    move-exception v0

    .line 308
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 313
    :cond_c2
    const/4 v0, 0x0

    goto :goto_a2

    :cond_c4
    move-object v1, v0

    goto :goto_83
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$102(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/Locator;)Lorg/xml/sax/Locator;

    .line 345
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 329
    const-string v0, "project"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 330
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 335
    return-void

    .line 332
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 333
    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v2, "Config file is not of expected XML type"

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1
.end method
