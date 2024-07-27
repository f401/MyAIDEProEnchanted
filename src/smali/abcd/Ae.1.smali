.class public Labcd/Ae;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi",
        "<",
        "Labcd/Ae;",
        ">;"
    }
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private gn:Lorg/w3c/dom/Document;
    .annotation runtime Labcd/ru;
        field = -0x1d83e956a64ba203L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x2713b52a8be50727L    # -2.28305745904338E120

    const-class v0, Labcd/Ae;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x557ddb6729a884fL
    .end annotation

    const-wide v4, 0x4ca105fede693068L    # 1.3677790812844693E61

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4ca105fede693068L    # 1.3677790812844693E61

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Ljava/lang/String;Labcd/Be;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-wide v8, 0x2b1851af7d96ef9L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b1851af7d96ef9L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p0}, Labcd/Ae;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    invoke-static {v0, p1, p2}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/Ae;->DW(Lorg/w3c/dom/Document;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static DW(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x17a0075b563b1288L
    .end annotation

    const-wide v4, 0xced8c9aef6315ebL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xced8c9aef6315ebL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "//manifest"

    const-string v1, "package"

    invoke-static {p0, v0, v1}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static FH(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x40b69d6ab467db7bL
    .end annotation

    const-wide v4, 0x6fdae846503f69cL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6fdae846503f69cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "//manifest"

    const-string v1, "android:versionCode"

    invoke-static {p0, v0, v1}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static Hw(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5b330fdf34feb7dL
    .end annotation

    const-wide v4, -0x3d1d5299b3496c40L    # -1.6428763956547E14

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3d1d5299b3496c40L    # -1.6428763956547E14

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "//manifest"

    const-string v1, "android:versionName"

    invoke-static {p0, v0, v1}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/lang/String;Labcd/Be;Ljava/lang/String;)I
    .registers 13

    const-wide v8, 0x7d6a411cbaec5b3L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7d6a411cbaec5b3L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p0}, Labcd/Ae;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    invoke-static {v0, p1, p2}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(Lorg/w3c/dom/Document;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xb362994ac023f04L
    .end annotation

    const-wide v4, 0x39a71b35e4a533a5L    # 5.696140534008164E-31

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39a71b35e4a533a5L    # 5.696140534008164E-31

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "//manifest//uses-sdk"

    const-string v1, "android:minSdkVersion"

    invoke-static {p0, v0, v1}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private static j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x28dc1e9beab85a79L
    .end annotation

    const-wide v8, 0xe03ce03821efd14L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe03ce03821efd14L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_3

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private static j6(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x19f76201f8430418L
    .end annotation

    const-wide v2, 0x57386359cb7f9f4dL    # 1.4662775122320337E112

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x57386359cb7f9f4dL    # 1.4662775122320337E112

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(Lorg/w3c/dom/Document;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xd914d36544c739L
    .end annotation

    :try_start_0
    sget-boolean v2, Labcd/Ae;->Zo:Z

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0xc3334d28521b140L

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    move-object v4, p0

    move v7, v2

    :goto_0
    array-length v2, v8

    if-ge v7, v2, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v3

    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_4

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v5, v3, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_3

    if-nez v2, :cond_8

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    move-object v5, v2

    :goto_2
    if-eqz p2, :cond_1

    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_2

    :cond_1
    aget-object v10, v8, v7

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_3
    add-int/lit8 v2, v7, 0x1

    move-object v4, v3

    move v7, v2

    goto :goto_0

    :cond_2
    move-object v2, v5

    :cond_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    aget-object v3, v8, v7

    invoke-interface {p0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_3

    :cond_5
    aget-object v2, v8, v7

    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    sget-boolean v2, Labcd/Ae;->VH:Z

    if-eqz v2, :cond_7

    const-wide v4, 0xc3334d28521b140L

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v7, p0

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v3

    :cond_8
    move-object v5, v2

    goto :goto_2
.end method

.method private static j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x747a1b76ec4d657L
    .end annotation

    const-wide v8, -0x243475d313a16d40L    # -1.563824631709946E134

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x243475d313a16d40L    # -1.563824631709946E134

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "manifest"

    invoke-static {p0, v0}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p1, p2}, Labcd/Be;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:versionCode"

    invoke-virtual {p1, p2}, Labcd/Be;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:versionName"

    invoke-virtual {p1, p2}, Labcd/Be;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Labcd/Be;->Mr:Labcd/Be$h;

    if-eqz v0, :cond_3

    const-string v0, "manifest/application/meta-data"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "android:name"

    const-string v2, "com.google.android.wearable.beta.app"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:resource"

    const-string v2, "@xml/wearable_app_desc"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "manifest/uses-sdk"

    invoke-static {p0, v0}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1, p2}, Labcd/Be;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "android:minSdkVersion"

    invoke-virtual {p1, p2}, Labcd/Be;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {p1, p2}, Labcd/Be;->u7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "android:targetSdkVersion"

    invoke-virtual {p1, p2}, Labcd/Be;->u7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_5

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    const-string v1, "android:minSdkVersion"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android:minSdkVersion"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v1, "android:targetSdkVersion"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android:targetSdkVersion"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x2ce9ef82d6253b4L
    .end annotation

    const-wide v8, 0x77795944657b10dL

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x77795944657b10dL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Labcd/Be;Ljava/lang/String;)Z
    .registers 14

    const-wide v8, 0xa24617f5e4bbde0L    # 8.28468571268087E-260

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa24617f5e4bbde0L    # 8.28468571268087E-260

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p0}, Labcd/Ae;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    invoke-static {v0, p2, p3}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/Ae;->DW(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Labcd/Ae;->FH(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Labcd/Ae;->Hw(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Labcd/Ke;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Labcd/Be;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x238c0444be5149ccL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p0}, Labcd/Ae;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    if-eqz p2, :cond_1

    invoke-static {v0, p2, p4}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Labcd/Ee;

    invoke-direct {v2}, Labcd/Ee;-><init>()V

    invoke-virtual {v2, v0, v1}, Labcd/Ee;->j6(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "${applicationId}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "${packageName}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Lcom/aide/common/na;

    invoke-direct {v2, p1}, Lcom/aide/common/na;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/Ae;->VH:Z

    if-eqz v0, :cond_2

    const-wide v2, -0x238c0444be5149ccL

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/Ae;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x26bf7c418525ca8L
    .end annotation

    const-wide v2, -0x61ae96a2401e55L

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x61ae96a2401e55L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p1}, Labcd/Ae;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Ae;->DW(Ljava/lang/String;)Labcd/Ae;

    move-result-object v0

    return-object v0
.end method
