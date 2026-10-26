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
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .locals 9

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 126
    instance-of v5, p0, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_3

    .line 127
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 128
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    move-object p1, v0

    .line 154
    :cond_1
    :goto_1
    return-object p1

    .line 128
    :sswitch_0
    const-string v7, "field"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_1
    const-string v7, "class"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v7, "method"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    .line 136
    :pswitch_0
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->FIELD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    :goto_2
    move v5, v4

    .line 133
    :goto_3
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 143
    invoke-interface {v6, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_2
    move v0, v1

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 154
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    .line 130
    :pswitch_1
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->CLASS:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    goto :goto_2

    .line 133
    :pswitch_2
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    goto :goto_2

    .line 146
    :sswitch_3
    const-string v0, "removed"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_4

    :sswitch_4
    const-string v0, "since"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_4

    :sswitch_5
    const-string v0, "name"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_4

    :sswitch_6
    const-string v0, "deprecated"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_4

    .line 157
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    goto :goto_5

    .line 151
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    goto :goto_5

    .line 148
    :pswitch_5
    iput-object v8, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    goto :goto_5

    .line 154
    :pswitch_6
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    goto :goto_5

    :cond_3
    move-object p1, v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x403a2f1f -> :sswitch_2
        0x5a5a978 -> :sswitch_1
        0x5cea0fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 146
    :sswitch_data_1
    .sparse-switch
        -0x614b9a4d -> :sswitch_6
        0x337a8b -> :sswitch_5
        0x685f33a -> :sswitch_4
        0x41141860 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static findApi(Ljava/lang/String;Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .locals 1

    .line 73
    invoke-static {p0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->findApi(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static findClass(Ljava/lang/Class;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;
    .locals 1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    move-result-object v0

    return-object v0
.end method

.method public static findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;
    .locals 2

    .line 60
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v0, :cond_1

    .line 66
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

    if-eqz v0, :cond_0

    .line 66
    sget-object v1, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getClassApis()Ljava/util/Map;
    .locals 3
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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    :goto_0
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApis:Ljava/util/Map;

    return-object v0

    .line 44
    :catchall_0
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
    .locals 1
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
    .locals 12
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

    .line 85
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

    if-ge v1, v0, :cond_3

    .line 90
    :try_start_0
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 91
    new-instance v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    invoke-direct {v0}, Lcom/s1243808733/aide/completion/apiversion/ClassApi;-><init>()V

    invoke-static {v3, v0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-nez v0, :cond_0

    .line 119
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v6, v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->name:Ljava/lang/String;

    const-string v7, "$"

    const-string v8, "."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->name:Ljava/lang/String;

    .line 98
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v3, v2

    .line 99
    :goto_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-ge v3, v7, :cond_2

    .line 101
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

    if-eqz v9, :cond_1

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

    .line 110
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v9, v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfos:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 119
    :catchall_0
    move-exception v7

    goto :goto_3

    .line 116
    :cond_2
    :try_start_2
    iget-object v3, v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->name:Ljava/lang/String;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 119
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public static preload()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->getClassApis()Ljava/util/Map;

    return-void
.end method
