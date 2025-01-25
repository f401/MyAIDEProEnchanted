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
    .registers 4

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

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

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

    if-eqz v0, :cond_20

    .line 91
    invoke-interface {p0, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    .line 92
    new-instance v0, Lcom/s1243808733/aide/util/MenuCode;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/aide/util/MenuCode;-><init>(Landroid/view/MenuItem;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)V

    return-object v0

    .line 93
    :cond_20
    const-string v0, "menu"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 94
    invoke-interface {p0, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    .line 95
    new-instance v0, Lcom/s1243808733/aide/util/MenuCode;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/aide/util/MenuCode;-><init>(Landroid/view/SubMenu;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)V

    return-object v0

    :cond_36
    const/4 p0, 0x0

    return-object p0
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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/util/MenuCode;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 102
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 103
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 104
    invoke-static {p0, v2, p2}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Lorg/w3c/dom/Node;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Lcom/s1243808733/aide/util/MenuCode;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object v0
.end method

.method public static add(Landroid/view/Menu;Ljava/io/InputStream;Ljava/lang/String;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)[Lcom/s1243808733/aide/util/MenuCode;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    :goto_16
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 76
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 77
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 78
    const-string v4, "format"

    invoke-static {v3, v4}, Lcom/s1243808733/aide/util/MenuCode;->getValueByName(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 79
    invoke-static {v3, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 80
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Lorg/w3c/dom/NodeList;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Ljava/util/List;

    move-result-object p0

    new-array p1, v0, [Lcom/s1243808733/aide/util/MenuCode;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/s1243808733/aide/util/MenuCode;

    return-object p0

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getValueByName(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1f

    .line 113
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 114
    invoke-interface {p0, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 116
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_1f
    const-string p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public getMenuItem()Landroid/view/MenuItem;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isSubMenu()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    .line 38
    :cond_f
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isMenuItem()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    return-object v0

    .line 49
    :cond_f
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->object:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
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
    .registers 4

    .line 124
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isSubMenu()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 125
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/MenuCode;->OnMenuItemClickListener:Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;

    invoke-static {p1, v0, v1}, Lcom/s1243808733/aide/util/MenuCode;->add(Landroid/view/Menu;Lorg/w3c/dom/NodeList;Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;)Ljava/util/List;

    goto :goto_2a

    .line 128
    :cond_19
    invoke-virtual {p0}, Lcom/s1243808733/aide/util/MenuCode;->isMenuItem()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 129
    iget-object v0, p0, Lcom/s1243808733/aide/util/MenuCode;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/s1243808733/aide/util/MenuCode;->OnMenuItemClickListener:Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;

    invoke-interface {v1, p1, v0}, Lcom/s1243808733/aide/util/MenuCode$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;Ljava/lang/String;)V

    :goto_2a
    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method
