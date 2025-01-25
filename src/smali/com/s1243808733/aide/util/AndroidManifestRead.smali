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
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
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
    .registers 3
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
    .registers 5

    .line 431
    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 432
    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 433
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 434
    const-string v1, "encoding"

    invoke-virtual {p1, v1, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string p2, "indent"

    const-string v1, "yes"

    invoke-virtual {p1, p2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1, v0, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_21
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_21} :catch_27
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_2b

    :catch_22
    move-exception p0

    .line 440
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 438
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public static format(Landroid/app/Activity;Ljava/io/File;Z)V
    .registers 5

    .line 378
    invoke-static {}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->isAnnotationPermission()Z

    move-result p2

    .line 382
    :try_start_4
    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/PManifestUtils;->load(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 383
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->save(Ljava/util/List;Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object p2

    .line 385
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_28

    .line 386
    :try_start_1d
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 392
    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_32

    .line 397
    :catchall_24
    move-exception p0

    goto :goto_32

    .line 395
    :catchall_26
    move-exception p1

    goto :goto_2a

    :catchall_28
    move-exception p1

    const/4 v0, 0x0

    .line 389
    :goto_2a
    :try_start_2a
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_38

    .line 392
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_32

    .line 397
    :catchall_31
    move-exception p0

    .line 395
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_37

    .line 397
    :catchall_36
    move-exception p0

    .line 395
    :goto_37
    return-void

    :catchall_38
    move-exception p0

    .line 392
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_3e

    .line 397
    :catchall_3d
    move-exception p1

    .line 395
    :goto_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_43

    .line 397
    :catchall_42
    move-exception p1

    :goto_43
    throw p0
.end method

.method public static getNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3

    .line 400
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 403
    :cond_8
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p0

    :cond_f
    return-object v0
.end method

.method public static getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 411
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 412
    :cond_5
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-nez p0, :cond_c

    return-object v0

    .line 415
    :cond_c
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 417
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v0
.end method

.method public static setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 422
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 424
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 426
    invoke-interface {p0, p2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public RemovePermission(Ljava/lang/String;)V
    .registers 5

    .line 290
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getPermission()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 293
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->RemovePermission(I)Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public RemovePermission(I)Z
    .registers 4

    .line 297
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "uses-permission"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 p1, 0x0

    return p1
.end method

.method public Save()V
    .registers 4
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
    :try_start_13
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->loadData()V
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_16} :catch_1b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_16} :catch_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1c

    :catch_17
    move-exception v0

    goto :goto_1c

    :catch_19
    move-exception v0

    goto :goto_1c

    :catch_1b
    move-exception v0

    :goto_1c
    return-void
.end method

.method public addActivity(Lcom/s1243808733/aide/util/FActivityInfo;)V
    .registers 4

    .line 239
    iget-object v0, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    const-string v1, "activity"

    invoke-virtual {p0, v1, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 241
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 242
    const-string v1, "android:name"

    iget-object p1, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public addPermission(Ljava/lang/String;)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "uses-permission"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 151
    const-string v1, "android:name"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public addReceiver(Lcom/s1243808733/aide/util/FActivityInfo;)V
    .registers 7

    .line 254
    iget-object v0, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    const-string v1, "receiver"

    invoke-virtual {p0, v1, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 259
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 260
    iget-object v1, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    const-string v2, "android:name"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v3, "intent-filter"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 262
    iget-object v3, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v4, "action"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 263
    iget-object p1, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 265
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 266
    iget-object p1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public addService(Lcom/s1243808733/aide/util/FActivityInfo;)V
    .registers 4

    .line 246
    iget-object v0, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    const-string v1, "service"

    invoke-virtual {p0, v1, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 248
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 249
    const-string v1, "android:name"

    iget-object p1, p1, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public exportActivity()V
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "activity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    :goto_9
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 127
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "android:exported"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public getActivity()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/util/FActivityInfo;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "activity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 164
    :goto_f
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_9a

    .line 165
    new-instance v4, Lcom/s1243808733/aide/util/FActivityInfo;

    invoke-direct {v4}, Lcom/s1243808733/aide/util/FActivityInfo;-><init>()V

    .line 166
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    const-string v6, "android:name"

    invoke-static {v5, v6}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    .line 167
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/s1243808733/aide/util/FActivityInfo;->lable:Ljava/lang/String;

    .line 169
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v7, 0x0

    .line 170
    :goto_39
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_93

    .line 171
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_46

    goto :goto_90

    .line 174
    :cond_46
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4d

    goto :goto_90

    .line 176
    :cond_4d
    const-string v10, "intent-filter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_90

    .line 177
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    if-nez v8, :cond_5c

    goto :goto_90

    :cond_5c
    const/4 v9, 0x0

    .line 180
    :goto_5d
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_90

    .line 181
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    if-nez v10, :cond_6a

    goto :goto_8d

    .line 182
    :cond_6a
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "action"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 183
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 184
    sget-object v11, Lcom/s1243808733/aide/util/AndroidManifestRead;->MAIN:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 185
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/s1243808733/aide/util/FActivityInfo;->isMain:Z

    :cond_8d
    :goto_8d
    add-int/lit8 v9, v9, 0x1

    goto :goto_5d

    :cond_90
    :goto_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 191
    :cond_93
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_9a
    return-object v1
.end method

.method public getActivityName()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getActivity()Ljava/util/List;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 157
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/aide/util/FActivityInfo;

    iget-object v3, v3, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    return-object v1
.end method

.method public getAndroidFxtractNativeLibs()Z
    .registers 6

    .line 351
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    :goto_8
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 353
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 354
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v2, "android:extractNativeLibs"

    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_34
    const/4 v1, 0x1

    :goto_35
    return v1
.end method

.method public getAppIcon()Ljava/lang/String;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:icon"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 3
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
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:name"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActivity()Lorg/w3c/dom/Node;
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "activity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getActivity()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 199
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 200
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/aide/util/FActivityInfo;

    iget-boolean v3, v3, Lcom/s1243808733/aide/util/FActivityInfo;->isMain:Z

    if-eqz v3, :cond_22

    .line 201
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstActivityName()Ljava/lang/String;
    .registers 3

    .line 111
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getFirstActivity()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_8
    sget-object v1, Lcom/s1243808733/aide/util/AndroidManifestRead;->NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiniSdk()I
    .registers 6

    .line 305
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 306
    :goto_8
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 307
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uses-sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 308
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "android:minSdkVersion"

    invoke-static {v3, v4}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 311
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_31

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_31
    move-exception v1

    :cond_32
    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "package"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->path:Ljava/io/File;

    return-object v0
.end method

.method public getPermission()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 133
    :cond_6
    const-string v2, "uses-permission"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v1

    .line 136
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 137
    :goto_15
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 138
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    if-nez v4, :cond_26

    return-object v1

    .line 141
    :cond_26
    const-string v5, "android:name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_2f

    return-object v1

    .line 144
    :cond_2f
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_39
    return-object v2
.end method

.method public getTargetSdk()I
    .registers 6

    .line 324
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 325
    :goto_8
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 326
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uses-sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 327
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "android:targetSdkVersion"

    invoke-static {v3, v4}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 330
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_31

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_31
    move-exception v1

    :cond_32
    return v0
.end method

.method public getVersionCode()J
    .registers 3

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

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-wide v0

    :catchall_15
    move-exception v0

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "android:versionName"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method isApplicatonAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 270
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-eqz v0, :cond_3b

    .line 271
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 272
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 273
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 274
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 276
    const-string v4, "android:name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 278
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3b
    return v1
.end method

.method loadData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

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
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    .line 73
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v2, "application"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 74
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    .line 75
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v2, "receiver"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 76
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->receivers:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:label"

    invoke-static {v0, v1, p1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v1, "android:name"

    invoke-static {v0, v1, p1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFirstActivity(I)Z
    .registers 11

    .line 210
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getFirstActivity()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 213
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 214
    :goto_e
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_60

    .line 215
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "intent-filter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 216
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_2b

    goto :goto_5d

    .line 217
    :cond_2b
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    if-eqz v5, :cond_5d

    const/4 v6, 0x0

    .line 219
    :goto_36
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_5d

    .line 220
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    sget-object v8, Lcom/s1243808733/aide/util/AndroidManifestRead;->NAME:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 222
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 223
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5d

    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_60
    if-nez v3, :cond_63

    return v1

    .line 234
    :cond_63
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->doc:Lorg/w3c/dom/Document;

    const-string v1, "activity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 235
    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 p1, 0x1

    return p1
.end method

.method public setMiniSdk(I)V
    .registers 7

    .line 341
    iget-object v0, p0, Lcom/s1243808733/aide/util/AndroidManifestRead;->manifest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    :goto_7
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 343
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uses-sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 344
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "android:minSdkVersion"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;->setNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_37
    return-void
.end method
