.class public Lorg/dom4j/rule/Mode;
.super Ljava/lang/Object;


# instance fields
.field private attributeNameRuleSets:Ljava/util/Map;

.field private elementNameRuleSets:Ljava/util/Map;

.field private ruleSets:[Lorg/dom4j/rule/RuleSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [Lorg/dom4j/rule/RuleSet;

    iput-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    return-void
.end method


# virtual methods
.method public addRule(Lorg/dom4j/rule/Rule;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchType()S

    move-result v1

    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    if-ne v1, v0, :cond_2d

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v3, v2, p1}, Lorg/dom4j/rule/Mode;->addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    :cond_15
    :goto_15
    const/16 v2, 0xe

    if-lt v1, v2, :cond_1a

    const/4 v1, 0x0

    :cond_1a
    if-nez v1, :cond_39

    iget-object v2, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    array-length v2, v2

    :goto_1f
    if-ge v0, v2, :cond_39

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2a

    invoke-virtual {v3, p1}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_15

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v3, v2, p1}, Lorg/dom4j/rule/Mode;->addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    goto :goto_15

    :cond_39
    invoke-virtual {p0, v1}, Lorg/dom4j/rule/Mode;->getRuleSet(I)Lorg/dom4j/rule/RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    return-void
.end method

.method protected addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;
    .registers 5

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    if-nez v0, :cond_17

    new-instance v0, Lorg/dom4j/rule/RuleSet;

    invoke-direct {v0}, Lorg/dom4j/rule/RuleSet;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    return-object p1
.end method

.method public applyTemplates(Lorg/dom4j/Document;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_11

    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Element;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_12

    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v1

    :goto_16
    if-ge v0, v1, :cond_22

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_22
    return-void
.end method

.method public fireRule(Lorg/dom4j/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Mode;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/dom4j/rule/Rule;->getAction()Lorg/dom4j/rule/Action;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lorg/dom4j/rule/Action;->run(Lorg/dom4j/Node;)V

    :cond_11
    return-void
.end method

.method public getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;
    .registers 6

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_21

    iget-object v0, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    if-eqz v0, :cond_3c

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3c

    iget-object v0, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_3c
    if-ltz v1, :cond_43

    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    array-length v0, v0

    if-lt v1, v0, :cond_44

    :cond_43
    move v1, v2

    :cond_44
    const/4 v0, 0x0

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4f

    invoke-virtual {v3, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    :cond_4f
    if-nez v0, :cond_20

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aget-object v1, v1, v2

    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    goto :goto_20
.end method

.method protected getRuleSet(I)Lorg/dom4j/rule/RuleSet;
    .registers 5

    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aget-object v0, v0, p1

    if-nez v0, :cond_1b

    new-instance v0, Lorg/dom4j/rule/RuleSet;

    invoke-direct {v0}, Lorg/dom4j/rule/RuleSet;-><init>()V

    iget-object v1, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    aput-object v0, v1, p1

    if-eqz p1, :cond_1b

    iget-object v1, p0, Lorg/dom4j/rule/Mode;->ruleSets:[Lorg/dom4j/rule/RuleSet;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v1}, Lorg/dom4j/rule/RuleSet;->addAll(Lorg/dom4j/rule/RuleSet;)V

    :cond_1b
    return-object v0
.end method

.method protected removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V
    .registers 5

    if-eqz p1, :cond_d

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    :cond_d
    return-void
.end method

.method public removeRule(Lorg/dom4j/rule/Rule;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchType()S

    move-result v0

    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v3, 0x1

    if-ne v0, v3, :cond_29

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v3, v2, p1}, Lorg/dom4j/rule/Mode;->removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V

    :cond_13
    :goto_13
    const/16 v2, 0xe

    if-lt v0, v2, :cond_18

    move v0, v1

    :cond_18
    invoke-virtual {p0, v0}, Lorg/dom4j/rule/Mode;->getRuleSet(I)Lorg/dom4j/rule/RuleSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    if-eqz v0, :cond_28

    invoke-virtual {p0, v1}, Lorg/dom4j/rule/Mode;->getRuleSet(I)Lorg/dom4j/rule/RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    :cond_28
    return-void

    :cond_29
    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    iget-object v3, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v3, v2, p1}, Lorg/dom4j/rule/Mode;->removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V

    goto :goto_13
.end method
