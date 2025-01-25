.class public Lcom/s1243808733/aide/completion/apiversion/ApiVersion;
.super Ljava/lang/Object;
.source "ApiVersion.java"


# static fields
.field private static keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ClassApi;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassApisCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ClassApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .registers 10

    .line 126
    instance-of v0, p0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_bc

    .line 127
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 128
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_be

    :goto_1b
    goto :goto_3d

    :sswitch_1c
    const-string v2, "field"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_1b

    :cond_25
    const/4 p0, 0x2

    goto :goto_3e

    :sswitch_27
    const-string v2, "class"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_1b

    :cond_30
    const/4 p0, 0x1

    goto :goto_3e

    :sswitch_32
    const-string v2, "method"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_1b

    :cond_3b
    const/4 p0, 0x0

    goto :goto_3e

    :goto_3d
    const/4 p0, -0x1

    :goto_3e
    packed-switch p0, :pswitch_data_cc

    return-object v1

    .line 136
    :pswitch_42  #0x2
    sget-object p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->FIELD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object p0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    goto :goto_50

    .line 130
    :pswitch_47  #0x1
    sget-object p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->CLASS:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object p0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    goto :goto_50

    .line 133
    :pswitch_4c  #0x0
    sget-object p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object p0, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    :goto_50
    const/4 p0, 0x0

    :goto_51
    if-eqz v0, :cond_bb

    .line 142
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge p0, v1, :cond_bb

    .line 143
    invoke-interface {v0, p0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_d6

    :goto_6f
    goto :goto_9c

    :sswitch_70
    const-string v7, "removed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    goto :goto_6f

    :cond_79
    const/4 v2, 0x3

    goto :goto_9d

    :sswitch_7b
    const-string v7, "since"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    goto :goto_6f

    :cond_84
    const/4 v2, 0x2

    goto :goto_9d

    :sswitch_86
    const-string v7, "name"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto :goto_6f

    :cond_8f
    const/4 v2, 0x1

    goto :goto_9d

    :sswitch_91
    const-string v7, "deprecated"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    goto :goto_6f

    :cond_9a
    const/4 v2, 0x0

    goto :goto_9d

    :goto_9c
    const/4 v2, -0x1

    :goto_9d
    packed-switch v2, :pswitch_data_e8

    goto :goto_b8

    .line 157
    :pswitch_a1  #0x3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    goto :goto_b8

    .line 151
    :pswitch_a8  #0x2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    goto :goto_b8

    .line 148
    :pswitch_af  #0x1
    iput-object v1, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    goto :goto_b8

    .line 154
    :pswitch_b2  #0x0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    :goto_b8
    add-int/lit8 p0, p0, 0x1

    goto :goto_51

    :cond_bb
    return-object p1

    :cond_bc
    return-object v1

    nop

    :sswitch_data_be
    .sparse-switch
        -0x403a2f1f -> :sswitch_32
        0x5a5a978 -> :sswitch_27
        0x5cea0fa -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_4c  #00000000
        :pswitch_47  #00000001
        :pswitch_42  #00000002
    .end packed-switch

    :sswitch_data_d6
    .sparse-switch
        -0x614b9a4d -> :sswitch_91
        0x337a8b -> :sswitch_86
        0x685f33a -> :sswitch_7b
        0x41141860 -> :sswitch_70
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_b2  #00000000
        :pswitch_af  #00000001
        :pswitch_a8  #00000002
        :pswitch_a1  #00000003
    .end packed-switch
.end method

.method public static findApi(Ljava/lang/String;Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .registers 2

    .line 73
    invoke-static {p0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 74
    :cond_8
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->findApi(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static findClass(Ljava/lang/Class;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;
    .registers 1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    move-result-object p0

    return-object p0
.end method

.method public static findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;
    .registers 3

    .line 60
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v0, :cond_b

    return-object v0

    .line 64
    :cond_b
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->getClassApis()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v0, :cond_1c

    .line 66
    sget-object v1, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApisCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public static getClassApis()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ClassApi;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApis:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 44
    :try_start_4
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->parseClassApi()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApis:Ljava/util/Map;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception v0

    .line 46
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 49
    :cond_15
    :goto_15
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->sClassApis:Ljava/util/Map;

    return-object v0
.end method

.method public static getKeySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->keySet:Ljava/util/Set;

    if-nez v0, :cond_e

    .line 32
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->getClassApis()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->keySet:Ljava/util/Set;

    .line 34
    :cond_e
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method private static parseClassApi()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
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

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "api-versions.xml"

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 86
    const-string v2, "api"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    .line 88
    :goto_33
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_aa

    .line 90
    const/4 v4, 0x1

    :try_start_3a
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 91
    new-instance v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    invoke-direct {v6}, Lcom/s1243808733/aide/completion/apiversion/ClassApi;-><init>()V

    invoke-static {v5, v6}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-nez v6, :cond_4c

    goto :goto_a7

    .line 95
    :cond_4c
    iget-object v7, v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->name:Ljava/lang/String;

    const-string v8, "$"

    const-string v9, "."

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->name:Ljava/lang/String;

    .line 98
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v7, 0x0

    .line 99
    :goto_5d
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8
    :try_end_61
    .catchall {:try_start_3a .. :try_end_61} :catchall_9f

    if-ge v7, v8, :cond_99

    .line 101
    :try_start_63
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 102
    new-instance v9, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    invoke-direct {v9}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;-><init>()V

    invoke-static {v8, v9}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->createApiInfo(Lorg/w3c/dom/Node;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v8

    .line 104
    iput-object v6, v8, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    .line 106
    iget-object v9, v8, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    .line 107
    sget-object v10, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->METHOD:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iget-object v11, v8, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    invoke-virtual {v10, v11}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 108
    iget-object v10, v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfos:Ljava/util/Map;

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    .line 110
    :cond_8f
    iget-object v10, v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfos:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_63 .. :try_end_94} :catchall_95

    goto :goto_96

    .line 119
    :catchall_95
    move-exception v8

    .line 110
    :goto_96
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 116
    :cond_99
    :try_start_99
    iget-object v5, v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->name:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_9f

    goto :goto_a7

    :catchall_9f
    move-exception v5

    .line 119
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :goto_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_aa
    return-object v0
.end method

.method public static preload()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->getClassApis()Ljava/util/Map;

    return-void
.end method
