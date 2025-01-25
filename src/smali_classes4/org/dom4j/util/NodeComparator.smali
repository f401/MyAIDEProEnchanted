.class public Lorg/dom4j/util/NodeComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, p2, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-eqz p1, :cond_3f

    if-eqz p2, :cond_5

    instance-of v2, p1, Lorg/dom4j/Node;

    if-eqz v2, :cond_1b

    instance-of v1, p2, Lorg/dom4j/Node;

    if-eqz v1, :cond_5

    check-cast p1, Lorg/dom4j/Node;

    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v0

    goto :goto_5

    :cond_1b
    instance-of v0, p2, Lorg/dom4j/Node;

    if-nez v0, :cond_3f

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_5

    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_3f
    move v0, v1

    goto :goto_5
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-nez p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    if-nez p2, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    :cond_12
    return v0
.end method

.method public compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I
    .registers 5

    if-ne p1, p2, :cond_4

    const/4 v0, 0x0

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-nez p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    if-nez p2, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I
    .registers 7

    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    if-nez v0, :cond_30

    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    invoke-interface {p2}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    sub-int v0, v2, v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, v2, :cond_35

    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    :goto_30
    return v0

    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_35
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    goto :goto_30
.end method

.method public compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I
    .registers 5

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I
    .registers 6

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    invoke-interface {p2}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    sub-int v0, v1, v0

    if-eqz v0, :cond_d

    :goto_c
    return v0

    :cond_d
    packed-switch v1, :pswitch_data_8e

    :pswitch_10  #0x6, 0xb, 0xc
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid node types. node1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and node2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_33  #0x1
    check-cast p1, Lorg/dom4j/Element;

    check-cast p2, Lorg/dom4j/Element;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I

    move-result v0

    goto :goto_c

    :pswitch_3c  #0x9
    check-cast p1, Lorg/dom4j/Document;

    check-cast p2, Lorg/dom4j/Document;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I

    move-result v0

    goto :goto_c

    :pswitch_45  #0x2
    check-cast p1, Lorg/dom4j/Attribute;

    check-cast p2, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v0

    goto :goto_c

    :pswitch_4e  #0x3
    check-cast p1, Lorg/dom4j/Text;

    check-cast p2, Lorg/dom4j/Text;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_c

    :pswitch_57  #0x4
    check-cast p1, Lorg/dom4j/CDATA;

    check-cast p2, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_c

    :pswitch_60  #0x5
    check-cast p1, Lorg/dom4j/Entity;

    check-cast p2, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I

    move-result v0

    goto :goto_c

    :pswitch_69  #0x7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    check-cast p2, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I

    move-result v0

    goto :goto_c

    :pswitch_72  #0x8
    check-cast p1, Lorg/dom4j/Comment;

    check-cast p2, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_c

    :pswitch_7b  #0xa
    check-cast p1, Lorg/dom4j/DocumentType;

    check-cast p2, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    goto :goto_c

    :pswitch_84  #0xd
    check-cast p1, Lorg/dom4j/Namespace;

    check-cast p2, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I

    move-result v0

    goto :goto_c

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_45  #00000002
        :pswitch_4e  #00000003
        :pswitch_57  #00000004
        :pswitch_60  #00000005
        :pswitch_10  #00000006
        :pswitch_69  #00000007
        :pswitch_72  #00000008
        :pswitch_3c  #00000009
        :pswitch_7b  #0000000a
        :pswitch_10  #0000000b
        :pswitch_10  #0000000c
        :pswitch_84  #0000000d
    .end packed-switch
.end method

.method public compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I
    .registers 5

    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1a
    return v0
.end method

.method public compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I
    .registers 7

    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    invoke-interface {p2}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v0

    sub-int v0, v2, v0

    if-nez v0, :cond_1d

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_1d

    invoke-interface {p1, v1}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-interface {p2, v1}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    return v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method
