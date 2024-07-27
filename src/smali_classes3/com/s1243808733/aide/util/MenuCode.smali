.class public Lcom/s1243808733/aide/util/MenuCode;
.super Ljava/lang/Object;
.source "MenuCode.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private OnMenuItemClickListener:Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;

.field private node:Lorg/w3c/dom/Node;

.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/s1243808733/aide/util/MenuCode;->node:Lorg/w3c/dom/Node;

    .line 55
    iput-object p3, p0, Lcom/s1243808733/aide/util/MenuCode;->OnMenuItemClickListener:Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;

    .line 56
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public constructor <init>(Landroid/view/SubMenu;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lcom/s1243808733/aide/util/MenuCode;->node:Lorg/w3c/dom/Node;

    .line 62
    iput-object p3, p0, Lcom/s1243808733/aide/util/MenuCode;->OnMenuItemClickListener:Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;

    .line 63
    invoke-interface {p1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public static add(Landroid/view/Menu;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Lcom/s1243808733/aide/util/MenuCode;
    .registers 6

    .line 87
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 89
    const-string v2, "title"

    invoke-static {v1, v2}, Lcom/s1243808733/aide/util/MenuCode;->getValueByName(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "item"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {p0, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 92
    new-instance v0, Lcom/s1243808733/aide/util/MenuCode;

    invoke-direct {v0, v1, p1, p2}, Lcom/s1243808733/aide/util/MenuCode;-><init>(Landroid/view/MenuItem;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)V

    .line 97
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-string v0, "menu"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {p0, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 95
    new-instance v0, Lcom/s1243808733/aide/util/MenuCode;

    invoke-direct {v0, v1, p1, p2}, Lcom/s1243808733/aide/util/MenuCode;-><init>(Landroid/view/SubMenu;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)V

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/aide/util/MenuCode;

    goto :goto_0
.end method

.method public static add(Landroid/view/Menu;Lorg/w3c/dom/NodeList;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Lorg/w3c/dom/NodeList;",
            "Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/util/MenuCode;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 109
    return-object v1

    .line 103
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 104
    invoke-static {p0, v2, p2}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Lcom/s1243808733/aide/util/MenuCode;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static add(Landroid/view/Menu;Ljava/io/InputStream;Ljava/lang/String;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)[Lcom/s1243808733/aide/util/MenuCode;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 71
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v0, v1

    .line 75
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 83
    const/4 v0, 0x0

    check-cast v0, [Lcom/s1243808733/aide/util/MenuCode;

    :goto_1
    return-object v0

    .line 76
    :cond_0
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 77
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 78
    const-string v5, "format"

    invoke-static {v4, v5}, Lcom/s1243808733/aide/util/MenuCode;->getValueByName(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    if-eqz v4, :cond_1

    invoke-static {v4, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Lorg/w3c/dom/NodeList;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Lcom/s1243808733/aide/util/MenuCode;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/util/MenuCode;

    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getValueByName(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 113
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 119
    :cond_0
    const-string v0, "unknown"

    :goto_1
    return-object v0

    .line 114
    :cond_1
    invoke-interface {p0, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMenuItem()Landroid/view/MenuItem;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    goto :goto_0
.end method

.method public isMenuItem()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/MenuItem;

    return v0
.end method

.method public isSubMenu()Z
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/SubMenu;

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/view/SubMenu;->clear()V

    .line 127
    iget-object v1, p0, Lcom/s1243808733/aide/util/MenuCode;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/util/MenuCode;->OnMenuItemClickListener:Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Lorg/w3c/dom/NodeList;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Ljava/util/List;

    .line 134
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isMenuItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/s1243808733/aide/util/MenuCode;->OnMenuItemClickListener:Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;

    invoke-interface {v1, p1, v0}, Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
