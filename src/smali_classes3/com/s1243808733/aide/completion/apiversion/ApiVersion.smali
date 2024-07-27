.class public Lcom/s1243808733/aide/completion/apiversion/ApiVersion;
.super Ljava/lang/Object;
.source "ApiVersion.java"


# static fields
.field private static keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ClassApi;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassApisCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ClassApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 126
    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_9

    .line 127
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 128
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 130
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->CLASS:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    .line 142
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_4

    :cond_0
    move-object v0, p1

    .line 164
    :goto_2
    return-object v0

    .line 131
    :cond_1
    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 133
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    goto :goto_0

    .line 134
    :cond_2
    const-string v3, "field"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 136
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->FIELD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    goto :goto_0

    .line 139
    :cond_3
    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    goto :goto_2

    .line 143
    :cond_4
    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_6

    .line 148
    iput-object v2, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    .line 142
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_6
    const-string v4, "since"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_7

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    goto :goto_3

    .line 152
    :cond_7
    const-string v4, "deprecated"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_8

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    goto :goto_3

    .line 155
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    goto :goto_3

    .line 162
    :cond_9
    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    goto :goto_2
.end method

.method public static findApi(Ljava/lang/String;Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .registers 3

    .line 73
    invoke-static {p0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->findApi(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static findClass(Ljava/lang/Class;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;
    .registers 2

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    move-result-object v0

    return-object v0
.end method

.method public static findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;
    .registers 3

    .line 60
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    .line 61
    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->getClassApis()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    sget-object v1, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getClassApis()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ClassApi;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApis:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->parseClassApi()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApis:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApis:Ljava/util/Map;

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getKeySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->getClassApis()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->keySet:Ljava/util/Set;

    .line 34
    :cond_0
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method private static parseClassApi()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ClassApi;",
            ">;^",
            "Ljavax/xml/parsers/ParserConfigurationException;",
            "^",
            "Lorg/xml/sax/SAXException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 79
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "api-versions.xml"

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 86
    const-string v1, "api"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v1, v2

    .line 88
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 122
    return-object v4

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 91
    new-instance v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    invoke-direct {v0}, Lcom/s1243808733/aide/completion/apiversion/ClassApi;-><init>()V

    invoke-static {v3, v0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    .line 92
    if-nez v0, :cond_1

    .line 88
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v6, v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    const-string v7, "$"

    const-string v8, "."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    .line 98
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v3, v2

    .line 99
    :goto_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 116
    iget-object v3, v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 119
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_1

    .line 101
    :cond_2
    :try_start_1
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 102
    new-instance v8, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    invoke-direct {v8}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;-><init>()V

    invoke-static {v7, v8}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v7

    .line 104
    iput-object v0, v7, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    .line 106
    iget-object v8, v7, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    .line 107
    sget-object v9, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iget-object v10, v7, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    invoke-virtual {v9, v10}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 108
    iget-object v9, v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfos:Ljava/util/Map;

    const/4 v10, 0x0

    const-string v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 110
    :cond_3
    iget-object v9, v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfos:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public static preload()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->getClassApis()Ljava/util/Map;

    return-void
.end method
