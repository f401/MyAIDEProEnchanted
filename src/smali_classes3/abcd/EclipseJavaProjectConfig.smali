.class public Labcd/EclipseJavaProjectConfig;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/EclipseJavaProjectConfig$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi<",
        "Labcd/EclipseJavaProjectConfig;",
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
.field public nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/EclipseJavaProjectConfig$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/EclipseJavaProjectConfig;

    const-wide v1, 0x153f282b801dd3L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x4965bdc1614f810fL  # 3.8787654004398894E45

    :try_start_6
    sget-boolean v3, Labcd/EclipseJavaProjectConfig;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/EclipseJavaProjectConfig;->VH:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x583e4d7bda805b8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x373334780354143L  # -8.981184792421117E291

    :try_start_6
    sget-boolean v3, Labcd/EclipseJavaProjectConfig;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_aa

    :try_start_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    const-string v6, "//classpathentry"

    invoke-interface {v5, v6}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v5

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v3, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_53
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_a9

    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "kind"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "path"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v10, "exported"

    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v8, :cond_a2

    if-eqz v9, :cond_a2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_97

    const-string v10, "true"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    const/4 v7, 0x1

    goto :goto_98

    :cond_97
    const/4 v7, 0x0

    :goto_98
    iget-object v10, p0, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    new-instance v11, Labcd/EclipseJavaProjectConfig$Node;

    invoke-direct {v11, v8, v9, v7}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_a2} :catch_a5
    .catchall {:try_start_17 .. :try_end_a2} :catchall_aa

    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    :catch_a5
    move-exception v3

    :try_start_a6
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    :cond_a9
    return-void

    :catchall_aa
    move-exception v3

    sget-boolean v4, Labcd/EclipseJavaProjectConfig;->VH:Z

    if-eqz v4, :cond_b2

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_b2
    goto :goto_b4

    :goto_b3
    throw v3

    :goto_b4
    goto :goto_b3
.end method

.method public static j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Labcd/EclipseJavaProjectConfig$Node;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig;->Zo:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xdf20b05e91562afL  # -2.4969164421787977E241

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_7c

    :cond_d
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "classpath"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/EclipseJavaProjectConfig$Node;

    const-string v4, "classpathentry"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    iget-boolean v5, v3, Labcd/EclipseJavaProjectConfig$Node;->VH:Z

    if-eqz v5, :cond_43

    const-string v5, "exported"

    const-string v6, "true"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    const-string v5, "kind"

    iget-object v6, v3, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "path"

    iget-object v3, v3, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_26

    :cond_55
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    const-string v2, "indent"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_76} :catch_77
    .catchall {:try_start_d .. :try_end_76} :catchall_7c

    goto :goto_7b

    :catch_77
    move-exception v0

    :try_start_78
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    :goto_7b
    return-void

    :catchall_7c
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig;->VH:Z

    if-eqz v1, :cond_8d

    const-wide v2, -0xdf20b05e91562afL  # -2.4969164421787977E241

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v0

    :goto_8f
    goto :goto_8e
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/EclipseJavaProjectConfig;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7faf12704805b6bL
    .end annotation

    const-wide v0, -0x1cd40155ab544393L  # -5.282563624815877E169

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/EclipseJavaProjectConfig;

    invoke-direct {v2, p1}, Labcd/EclipseJavaProjectConfig;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/EclipseJavaProjectConfig;->DW(Ljava/lang/String;)Labcd/EclipseJavaProjectConfig;

    move-result-object p1

    return-object p1
.end method
