.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataTypeHandler"
.end annotation


# instance fields
.field private element:Ljava/lang/Object;

.field private target:Lorg/apache/tools/ant/Target;

.field private wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;)V
    .registers 5

    .line 954
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 955
    iput-object p3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->target:Lorg/apache/tools/ant/Target;

    .line 956
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    .line 999
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText([CII)V

    .line 1000
    return-void
.end method

.method public init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 976
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->createDataType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->element:Ljava/lang/Object;

    .line 977
    if-eqz v0, :cond_20

    .line 980
    new-instance v1, Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 981
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttributes(Lorg/xml/sax/AttributeList;)V

    .line 982
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->target:Lorg/apache/tools/ant/Target;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Target;->addDataType(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 985
    return-void

    .line 978
    :cond_20
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_37} :catch_37

    .line 983
    :catch_37
    move-exception v0

    .line 984
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v3}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1015
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->element:Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v5, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->target:Lorg/apache/tools/ant/Target;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 1016
    return-void
.end method
