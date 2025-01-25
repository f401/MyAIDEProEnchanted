.class public Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;
.super Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Group;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->GROUP_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;-><init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V

    return-void
.end method


# virtual methods
.method protected parseChild(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Group;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/vector/model/Group;",
            ")V^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    sget-object v0, Lcom/github/megatronking/svg/generator/vector/model/VectorConstants;->TAG_GROUP:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/model/Group;

    invoke-direct {v0, p2}, Lcom/github/megatronking/svg/generator/vector/model/Group;-><init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->GROUP_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    :cond_1b
    sget-object v0, Lcom/github/megatronking/svg/generator/vector/model/VectorConstants;->TAG_PATH:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/model/Path;

    invoke-direct {v0, p2}, Lcom/github/megatronking/svg/generator/vector/model/Path;-><init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V

    :cond_36
    sget-object v0, Lcom/github/megatronking/svg/generator/vector/model/VectorConstants;->TAG_CLIP_PATH:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/model/Path;

    invoke-direct {v0, p2}, Lcom/github/megatronking/svg/generator/vector/model/Path;-><init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->CLIP_PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V

    :cond_51
    return-void
.end method

.method protected bridge parseChild(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/vector/model/Group;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;->parseChild(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    return-void
.end method
