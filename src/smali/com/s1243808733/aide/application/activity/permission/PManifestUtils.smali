.class public Lcom/s1243808733/aide/application/activity/permission/PManifestUtils;
.super Ljava/lang/Object;
.source "PManifestUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/io/File;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 21
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/application/activity/permission/PManifestUtils;->load(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lorg/w3c/dom/Document;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 26
    const-string v0, "manifest"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 27
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_1d

    .line 28
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "找不到manifest节点"

    goto :goto_17

    :cond_15
    const-string p0, "No manifest node found"

    :goto_17
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1d
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lcom/s1243808733/aide/application/activity/permission/PManifestUtils;->load(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    :goto_7
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 38
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 39
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 40
    const-string v5, "uses-permission"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_67

    const/4 v3, 0x0

    .line 42
    :goto_29
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_67

    .line 43
    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 44
    const-string v6, "android:name"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 45
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 47
    invoke-static {v0, v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->hasAdded(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 48
    new-instance v4, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/s1243808733/aide/application/activity/permission/Permission;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 49
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6a
    return-object v0
.end method
