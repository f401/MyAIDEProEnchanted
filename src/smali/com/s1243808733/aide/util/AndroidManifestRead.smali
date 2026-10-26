.class public Lcom/s1243808733/aide/util/AndroidManifestRead;
.super Ljava/lang/Object;
.source "AndroidManifestRead.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static NAME:Ljava/lang/String; = "android:name"


# instance fields
.field public applicaton:Lorg/w3c/dom/Element;

.field builder:Ljavax/xml/parsers/DocumentBuilder;

.field public doc:Lorg/w3c/dom/Document;

.field factory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field public manifest:Lorg/w3c/dom/Node;

.field miniSdk:Lorg/w3c/dom/Node;

.field path:Ljava/io/File;

.field public receivers:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 64
    iput-object p1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->path:Ljava/io/File;

    .line 65
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->loadData()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static callDomWriter(Lorg/w3c/dom/Document;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 5

    .line 431
    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 432
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 433
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 434
    const-string v3, "encoding"

    invoke-virtual {v2, v3, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v3, "indent"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static format(Landroid/app/Activity;Ljava/io/File;Z)V
    .locals 3

    .line 378
    invoke-static {}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->isAnnotationPermission()Z

    move-result v0

    .line 382
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/PManifestUtils;->load(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 383
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 384
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->save(Ljava/util/List;Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object v1

    .line 385
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 395
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    move-object v1, v0

    .line 389
    :goto_2
    :try_start_4
    invoke-static {p0, v2}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 392
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v1

    goto :goto_0

    .line 395
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    goto :goto_2

    .line 397
    :catchall_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 395
    :catchall_3
    move-exception v0

    .line 392
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 395
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 397
    :goto_4
    throw v0

    :catchall_4
    move-exception v1

    goto :goto_0

    :catchall_5
    move-exception v0

    goto :goto_1

    :catchall_6
    move-exception v2

    goto :goto_3

    :catchall_7
    move-exception v1

    goto :goto_4
.end method

.method public static getNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    .line 400
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 411
    if-nez p0, :cond_0

    const-string v0, ""

    .line 417
    :goto_0
    return-object v0

    .line 412
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 415
    :cond_1
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 417
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 422
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 424
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public RemovePermission(Ljava/lang/String;)V
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getPermission()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    .line 291
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->RemovePermission(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public RemovePermission(I)Z
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "uses-permission"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    return v0
.end method

.method public Save()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->path:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 368
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 369
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->callDomWriter(Lorg/w3c/dom/Document;Ljava/io/Writer;Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->loadData()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public addActivity(Lcom/s1243808733/aide/util/FActivityInfo;)V
    .locals 3

    .line 239
    const-string v0, "activity"

    iget-object v1, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "activity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 242
    const-string v1, "android:name"

    iget-object v2, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public addPermission(Ljava/lang/String;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "uses-permission"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 151
    const-string v1, "android:name"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public addReceiver(Lcom/s1243808733/aide/util/FActivityInfo;)V
    .locals 5

    .line 254
    const-string v0, "receiver"

    iget-object v1, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "receiver"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 260
    const-string v1, "android:name"

    iget-object v2, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v2, "intent-filter"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v3, "action"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 263
    const-string v3, "android:name"

    iget-object v4, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 265
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 266
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public addService(Lcom/s1243808733/aide/util/FActivityInfo;)V
    .locals 3

    .line 246
    const-string v0, "service"

    iget-object v1, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "service"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 249
    const-string v1, "android:name"

    iget-object v2, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public exportActivity()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "activity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 127
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v3, "android:exported"

    const-string v4, "true"

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActivity()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/util/FActivityInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v2, "activity"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 163
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 164
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 165
    new-instance v6, Lcom/s1243808733/aide/util/FActivityInfo;

    invoke-direct {v6}, Lcom/s1243808733/aide/util/FActivityInfo;-><init>()V

    .line 166
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v3, "android:name"

    invoke-static {v2, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    .line 167
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v3, "android:name"

    invoke-static {v2, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/s1243808733/aide/util/FActivityInfo;->lable:Ljava/lang/String;

    .line 169
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    move v2, v1

    .line 170
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 171
    invoke-interface {v7, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_1

    .line 185
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 176
    const-string v9, "intent-filter"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 177
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    if-eqz v8, :cond_0

    move v3, v1

    .line 180
    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 181
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_3

    .line 185
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 182
    :cond_3
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "action"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 183
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "android:name"

    invoke-static {v9, v10}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 184
    sget-object v10, Lcom/s1243808733/aide/util/AndroidManifestRead;->MAIN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 185
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/s1243808733/aide/util/FActivityInfo;->isMain:Z

    goto :goto_3

    .line 191
    :cond_4
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v5
.end method

.method public getActivityName()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getActivity()Ljava/util/List;

    move-result-object v2

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 157
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 158
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/util/FActivityInfo;

    iget-object v0, v0, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getAndroidFxtractNativeLibs()Z
    .locals 5

    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v0, v1

    .line 352
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 353
    const-string v3, "application"

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v2, "android:extractNativeLibs"

    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:icon"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:label"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:name"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActivity()Lorg/w3c/dom/Node;
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "activity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getActivity()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    .line 199
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 200
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/util/FActivityInfo;

    iget-boolean v0, v0, Lcom/s1243808733/aide/util/FActivityInfo;->isMain:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFirstActivityName()Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getFirstActivity()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/s1243808733/aide/util/AndroidManifestRead;->NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMiniSdk()I
    .locals 5

    const/4 v1, 0x0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 306
    :goto_0
    :try_start_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 307
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uses-sdk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v4, "android:minSdkVersion"

    invoke-static {v1, v4}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move v2, v1

    :cond_0
    :goto_2
    return v2

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getPackage()Ljava/lang/String;
    .locals 2

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "package"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->path:Ljava/io/File;

    return-object v0
.end method

.method public getPermission()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 144
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const-string v2, "uses-permission"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 137
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 138
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 141
    :cond_2
    const-string v5, "android:name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 144
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public getTargetSdk()I
    .locals 5

    const/4 v1, 0x0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 325
    :goto_0
    :try_start_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 326
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uses-sdk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v4, "android:targetSdkVersion"

    invoke-static {v1, v4}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move v2, v1

    :cond_0
    :goto_2
    return v2

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getVersionCode()J
    .locals 2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "android:versionCode"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "android:versionName"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 270
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v1, v0

    :goto_0
    if-eqz v2, :cond_0

    .line 271
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 272
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 273
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 276
    const-string v4, "android:name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 278
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method loadData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 70
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->path:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    .line 71
    const-string v1, "manifest"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 72
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    .line 73
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "application"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 74
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    .line 75
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "receiver"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 76
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->receivers:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:label"

    invoke-static {v0, v1, p1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:name"

    invoke-static {v0, v1, p1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFirstActivity(I)Z
    .locals 9

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getFirstActivity()Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v2

    .line 214
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 215
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "intent-filter"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_3

    .line 223
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_3
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    if-eqz v6, :cond_2

    move v3, v2

    .line 219
    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 220
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    sget-object v8, Lcom/s1243808733/aide/util/AndroidManifestRead;->NAME:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 222
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 223
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v2, "activity"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 235
    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setMiniSdk(I)V
    .locals 5

    .line 341
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    .line 342
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 343
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uses-sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "android:minSdkVersion"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;->setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
