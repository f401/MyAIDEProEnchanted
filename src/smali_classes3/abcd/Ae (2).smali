.class public Labcd/Ae;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi<",
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
    .registers 3

    const-class v0, Labcd/Ae;

    const-wide v1, -0x2713b52a8be50727L  # -2.28305745904338E120

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x557ddb6729a884fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4ca105fede693068L  # 1.3677790812844693E61

    :try_start_6
    sget-boolean v3, Labcd/Ae;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/Ae;->VH:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method public static DW(Ljava/lang/String;Labcd/Be;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2b1851af7d96ef9L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_26

    :cond_10
    :try_start_10
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p0}, Labcd/Ae;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    invoke-static {v0, p1, p2}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/Ae;->DW(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_1f
    .catchall {:try_start_10 .. :try_end_1e} :catchall_26

    return-object p0

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_26

    const-string p0, ""

    return-object p0

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x2b1851af7d96ef9L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method private static DW(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17a0075b563b1288L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xced8c9aef6315ebL

    :try_start_6
    sget-boolean v3, Labcd/Ae;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "//manifest"

    const-string v4, "package"

    invoke-static {p0, v3, v4}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Ae;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method private static FH(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x40b69d6ab467db7bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6fdae846503f69cL

    :try_start_6
    sget-boolean v3, Labcd/Ae;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "//manifest"

    const-string v4, "android:versionCode"

    invoke-static {p0, v3, v4}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Ae;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method private static Hw(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5b330fdf34feb7dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3d1d5299b3496c40L  # -1.6428763956547E14

    :try_start_6
    sget-boolean v3, Labcd/Ae;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "//manifest"

    const-string v4, "android:versionName"

    invoke-static {p0, v3, v4}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Ae;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static j6(Ljava/lang/String;Labcd/Be;Ljava/lang/String;)I
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x7d6a411cbaec5b3L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_25

    :cond_10
    :try_start_10
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p0}, Labcd/Ae;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    invoke-static {v0, p1, p2}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_1f
    .catchall {:try_start_10 .. :try_end_1e} :catchall_25

    return p0

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x7d6a411cbaec5b3L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private static j6(Lorg/w3c/dom/Document;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb362994ac023f04L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x39a71b35e4a533a5L  # 5.696140534008164E-31

    :try_start_6
    sget-boolean v3, Labcd/Ae;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "//manifest//uses-sdk"

    const-string v4, "android:minSdkVersion"

    invoke-static {p0, v3, v4}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1e

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0

    :catchall_1e
    move-exception v3

    sget-boolean v4, Labcd/Ae;->VH:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method private static j6(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x28dc1e9beab85a79L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0xe03ce03821efd14L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
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

    :goto_25
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_41

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_43

    return-object p0

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_41
    const/4 p0, 0x0

    return-object p0

    :catchall_43
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_55

    const-wide v2, 0xe03ce03821efd14L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method private static j6(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x19f76201f8430418L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x57386359cb7f9f4dL  # 1.4662775122320337E112

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p0

    :catchall_13
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_24

    const-wide v2, 0x57386359cb7f9f4dL  # 1.4662775122320337E112

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method private static j6(Lorg/w3c/dom/Document;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xd914d36544c739L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xc3334d28521b140L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, p0

    const/4 v2, 0x0

    :goto_1d
    array-length v4, v0

    if-ge v2, v4, :cond_6e

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_26
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_54

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    instance-of v8, v7, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_51

    if-nez v5, :cond_39

    move-object v5, v7

    check-cast v5, Lorg/w3c/dom/Element;

    :cond_39
    if-eqz p2, :cond_40

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_51

    :cond_40
    aget-object v8, v0, v2

    move-object v9, v7

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    move-object v3, v7

    goto :goto_6b

    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_54
    if-eqz v5, :cond_61

    aget-object v4, v0, v2

    invoke-interface {p0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_6b

    :cond_61
    aget-object v4, v0, v2

    invoke-interface {p0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_6e
    check-cast v3, Lorg/w3c/dom/Element;
    :try_end_70
    .catchall {:try_start_0 .. :try_end_70} :catchall_71

    return-object v3

    :catchall_71
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_87

    const-wide v2, 0xc3334d28521b140L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method

.method private static j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x747a1b76ec4d657L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x243475d313a16d40L  # -1.563824631709946E134

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    if-nez p1, :cond_13

    return-void

    :cond_13
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

    if-eqz v0, :cond_4d

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

    :cond_4d
    const-string v0, "manifest/uses-sdk"

    invoke-static {p0, v0}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1, p2}, Labcd/Be;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_88

    const-string v2, "1"

    const-string v3, "android:minSdkVersion"

    if-eqz v1, :cond_65

    :try_start_5d
    invoke-virtual {p1, p2}, Labcd/Be;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :cond_65
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-static {v0, v3, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    invoke-virtual {p1, p2}, Labcd/Be;->u7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_72
    .catchall {:try_start_5d .. :try_end_72} :catchall_88

    const-string v3, "android:targetSdkVersion"

    if-eqz v1, :cond_7e

    :try_start_76
    invoke-virtual {p1, p2}, Labcd/Be;->u7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    :cond_7e
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_87

    invoke-static {v0, v3, v2}, Labcd/Ae;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_76 .. :try_end_87} :catchall_88

    :cond_87
    :goto_87
    return-void

    :catchall_88
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_9a

    const-wide v2, -0x243475d313a16d40L  # -1.563824631709946E134

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9a
    throw v0
.end method

.method private static j6(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2ce9ef82d6253b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x77795944657b10dL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    if-eqz p2, :cond_15

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_28

    const-wide v2, 0x77795944657b10dL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Labcd/Be;Ljava/lang/String;)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v1, 0xa24617f5e4bbde0L  # 8.28468571268087E-260

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_32

    :cond_11
    :try_start_11
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

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_2c
    .catchall {:try_start_11 .. :try_end_2b} :catchall_32

    return p0

    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_45

    const-wide v2, 0xa24617f5e4bbde0L  # 8.28468571268087E-260

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Labcd/Be;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/Ae;->Zo:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x238c0444be5149ccL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_53

    :cond_12
    :try_start_12
    new-instance v0, Labcd/Ae;

    invoke-direct {v0, p0}, Labcd/Ae;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Labcd/Ae;->gn:Lorg/w3c/dom/Document;

    if-eqz p2, :cond_1e

    invoke-static {v0, p2, p4}, Labcd/Ae;->j6(Lorg/w3c/dom/Document;Labcd/Be;Ljava/lang/String;)V

    :cond_1e
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
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4b} :catch_4d
    .catchall {:try_start_12 .. :try_end_4b} :catchall_53

    const/4 p0, 0x1

    return p0

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_53

    const/4 p0, 0x0

    return p0

    :catchall_53
    move-exception v0

    sget-boolean v1, Labcd/Ae;->VH:Z

    if-eqz v1, :cond_67

    const-wide v2, -0x238c0444be5149ccL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    throw v0
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/Ae;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x26bf7c418525ca8L
    .end annotation

    const-wide v0, -0x61ae96a2401e55L

    :try_start_5
    sget-boolean v2, Labcd/Ae;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Ae;

    invoke-direct {v2, p1}, Labcd/Ae;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Ae;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Ae;->DW(Ljava/lang/String;)Labcd/Ae;

    move-result-object p1

    return-object p1
.end method
