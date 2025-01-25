.class Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;
.super Ljava/lang/Object;
.source "XMLCatalog.java"

# interfaces
.implements Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/XMLCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalResolver"
.end annotation


# instance fields
.field private externalCatalogsProcessed:Z

.field private parseCatalog:Ljava/lang/reflect/Method;

.field private resolve:Ljava/lang/reflect/Method;

.field private resolveEntity:Ljava/lang/reflect/Method;

.field private resolverImpl:Ljava/lang/Object;

.field private setXMLCatalog:Ljava/lang/reflect/Method;

.field final this$0:Lorg/apache/tools/ant/types/XMLCatalog;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 911
    iput-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->setXMLCatalog:Ljava/lang/reflect/Method;

    .line 901
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->parseCatalog:Ljava/lang/reflect/Method;

    .line 902
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    .line 903
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;

    .line 906
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    .line 908
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->externalCatalogsProcessed:Z

    .line 913
    iput-object p3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    .line 923
    :try_start_15
    const-string v0, "setXMLCatalog"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/tools/ant/types/XMLCatalog;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->setXMLCatalog:Ljava/lang/reflect/Method;

    .line 926
    const-string v0, "parseCatalog"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->parseCatalog:Ljava/lang/reflect/Method;

    .line 929
    const-string v0, "resolveEntity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    .line 932
    const-string v0, "resolve"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;
    :try_end_5f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_5f} :catch_66

    .line 936
    const-string v0, "Apache resolver library found, xml-commons resolver will be used"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 940
    return-void

    .line 934
    :catch_66
    move-exception v0

    .line 935
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processExternalCatalogs()V
    .registers 11

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1087
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->externalCatalogsProcessed:Z

    if-nez v1, :cond_8b

    .line 1090
    :try_start_7
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->setXMLCatalog:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_84

    .line 1093
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 1097
    if-eqz v1, :cond_8b

    .line 1098
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using catalogpath \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 1101
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_4a
    if-ge v0, v2, :cond_8b

    aget-object v3, v1, v0

    .line 1102
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1103
    iget-object v3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v9}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 1105
    :try_start_69
    iget-object v3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->parseCatalog:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7a} :catch_7d

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 1106
    :catch_7d
    move-exception v0

    .line 1107
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1091
    :catch_84
    move-exception v0

    .line 1092
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1112
    :cond_8b
    iput-boolean v8, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->externalCatalogsProcessed:Z

    .line 1113
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->processExternalCatalogs()V

    .line 1002
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object v1

    .line 1004
    if-eqz v1, :cond_86

    .line 1006
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matching catalog entry found for uri: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' location: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 1024
    if-eqz p2, :cond_c5

    .line 1026
    :try_start_39
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Lorg/apache/tools/ant/types/ResourceLocation;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ResourceLocation;-><init>()V
    :try_end_43
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_43} :catch_c0

    .line 1028
    :try_start_43
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/ResourceLocation;->setBase(Ljava/net/URL;)V
    :try_end_46
    .catch Ljava/net/MalformedURLException; {:try_start_43 .. :try_end_46} :catch_c3

    .line 1033
    :goto_46
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/ResourceLocation;->setPublicId(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ResourceLocation;->setLocation(Ljava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v1

    .line 1038
    if-nez v1, :cond_63

    .line 1039
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    move-object v1, v0

    .line 1042
    :cond_63
    if-eqz v1, :cond_6b

    .line 1043
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 1073
    :goto_6a
    return-object v0

    .line 1046
    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_7f

    goto :goto_6a

    .line 1048
    :catch_7f
    move-exception v0

    .line 1049
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1061
    :cond_86
    if-nez p2, :cond_9e

    .line 1063
    :try_start_88
    invoke-static {}, Lorg/apache/tools/ant/types/XMLCatalog;->access$400()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_9d
    .catch Ljava/net/MalformedURLException; {:try_start_88 .. :try_end_9d} :catch_b2

    move-result-object p2

    .line 1069
    :cond_9e
    :try_start_9e
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b1} :catch_b9

    goto :goto_6a

    .line 1064
    :catch_b2
    move-exception v0

    .line 1065
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1071
    :catch_b9
    move-exception v0

    .line 1072
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1029
    :catch_c0
    move-exception v0

    move-object v0, v1

    goto :goto_46

    :catch_c3
    move-exception v2

    goto :goto_46

    :cond_c5
    move-object v0, v1

    goto :goto_46
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 7

    .line 946
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->processExternalCatalogs()V

    .line 948
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object v1

    .line 951
    if-eqz v1, :cond_62

    .line 953
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matching catalog entry found for publicId: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' location: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 958
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 960
    if-nez v0, :cond_45

    .line 961
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 964
    :cond_45
    if-nez v0, :cond_5a

    .line 966
    :try_start_47
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    .line 967
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/InputSource;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_5b

    .line 987
    :cond_5a
    :goto_5a
    return-object v0

    .line 969
    :catch_5b
    move-exception v0

    .line 970
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 983
    :cond_62
    :try_start_62
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/InputSource;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_75} :catch_76

    goto :goto_5a

    .line 985
    :catch_76
    move-exception v0

    .line 986
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
