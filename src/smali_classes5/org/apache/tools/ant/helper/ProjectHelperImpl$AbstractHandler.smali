.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.super Lorg/xml/sax/HandlerBase;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbstractHandler"
.end annotation


# instance fields
.field helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

.field protected parentHandler:Lorg/xml/sax/DocumentHandler;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V
    .registers 4

    .line 207
    invoke-direct {p0}, Lorg/xml/sax/HandlerBase;-><init>()V

    .line 208
    iput-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->parentHandler:Lorg/xml/sax/DocumentHandler;

    .line 209
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 212
    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$000(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Parser;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 213
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 249
    return-void

    .line 247
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected text \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$000(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Parser;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->parentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 265
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected element \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1
.end method
