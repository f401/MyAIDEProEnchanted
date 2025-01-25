.class public Lorg/dom4j/swing/XMLTableDefinition;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jaxen/VariableContext;


# instance fields
.field private columnArray:[Lorg/dom4j/swing/XMLTableColumnDefinition;

.field private columnNameIndex:Ljava/util/Map;

.field private columns:Ljava/util/List;

.field private rowValue:Ljava/lang/Object;

.field private rowXPath:Lorg/dom4j/XPath;

.field private variableContext:Lorg/jaxen/VariableContext;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    return-void
.end method

.method public static load(Lorg/dom4j/Document;)Lorg/dom4j/swing/XMLTableDefinition;
    .registers 2

    invoke-interface {p0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/swing/XMLTableDefinition;->load(Lorg/dom4j/Element;)Lorg/dom4j/swing/XMLTableDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lorg/dom4j/Element;)Lorg/dom4j/swing/XMLTableDefinition;
    .registers 8

    new-instance v1, Lorg/dom4j/swing/XMLTableDefinition;

    invoke-direct {v1}, Lorg/dom4j/swing/XMLTableDefinition;-><init>()V

    const-string v0, "select"

    invoke-interface {p0, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/dom4j/swing/XMLTableDefinition;->setRowExpression(Ljava/lang/String;)V

    const-string v0, "column"

    invoke-interface {p0, v0}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    const-string v3, "select"

    invoke-interface {v0, v3}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    const-string v6, "string"

    invoke-interface {v0, v5, v6}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "columnNameXPath"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lorg/dom4j/swing/XMLTableColumnDefinition;->parseType(Ljava/lang/String;)I

    move-result v5

    if-eqz v0, :cond_42

    invoke-virtual {v1, v0, v3, v5}, Lorg/dom4j/swing/XMLTableDefinition;->addColumnWithXPathName(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_14

    :cond_42
    invoke-virtual {v1, v4, v3, v5}, Lorg/dom4j/swing/XMLTableDefinition;->addColumn(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_14

    :cond_46
    return-object v1
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/swing/XMLTableDefinition;->addColumn(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addColumn(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Lorg/dom4j/swing/XMLTableColumnDefinition;

    invoke-virtual {p0, p2}, Lorg/dom4j/swing/XMLTableDefinition;->createColumnXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lorg/dom4j/swing/XMLTableColumnDefinition;-><init>(Ljava/lang/String;Lorg/dom4j/XPath;I)V

    invoke-virtual {p0, v0}, Lorg/dom4j/swing/XMLTableDefinition;->addColumn(Lorg/dom4j/swing/XMLTableColumnDefinition;)V

    return-void
.end method

.method public addColumn(Lorg/dom4j/swing/XMLTableColumnDefinition;)V
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/swing/XMLTableDefinition;->clearCaches()V

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addColumnWithXPathName(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Lorg/dom4j/swing/XMLTableColumnDefinition;

    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->createColumnXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/dom4j/swing/XMLTableDefinition;->createColumnXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lorg/dom4j/swing/XMLTableColumnDefinition;-><init>(Lorg/dom4j/XPath;Lorg/dom4j/XPath;I)V

    invoke-virtual {p0, v0}, Lorg/dom4j/swing/XMLTableDefinition;->addColumn(Lorg/dom4j/swing/XMLTableColumnDefinition;)V

    return-void
.end method

.method public addNumberColumn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/swing/XMLTableDefinition;->addColumn(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addStringColumn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/swing/XMLTableDefinition;->addColumn(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/swing/XMLTableDefinition;->clearCaches()V

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected clearCaches()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnArray:[Lorg/dom4j/swing/XMLTableColumnDefinition;

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnNameIndex:Ljava/util/Map;

    return-void
.end method

.method protected createColumnXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    return-object v0
.end method

.method protected createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .registers 3

    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public getColumn(I)Lorg/dom4j/swing/XMLTableColumnDefinition;
    .registers 4

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnArray:[Lorg/dom4j/swing/XMLTableColumnDefinition;

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/dom4j/swing/XMLTableColumnDefinition;

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnArray:[Lorg/dom4j/swing/XMLTableColumnDefinition;

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    iget-object v1, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnArray:[Lorg/dom4j/swing/XMLTableColumnDefinition;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_15
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnArray:[Lorg/dom4j/swing/XMLTableColumnDefinition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumn(Ljava/lang/String;)Lorg/dom4j/swing/XMLTableColumnDefinition;
    .registers 6

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnNameIndex:Ljava/util/Map;

    if-nez v0, :cond_27

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnNameIndex:Ljava/util/Map;

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/swing/XMLTableColumnDefinition;

    iget-object v2, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnNameIndex:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_27
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columnNameIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/swing/XMLTableColumnDefinition;

    return-object v0
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->getColumn(I)Lorg/dom4j/swing/XMLTableColumnDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->getColumnClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->getColumn(I)Lorg/dom4j/swing/XMLTableColumnDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNameXPath(I)Lorg/dom4j/XPath;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->getColumn(I)Lorg/dom4j/swing/XMLTableColumnDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->getColumnNameXPath()Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public getColumnXPath(I)Lorg/dom4j/XPath;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->getColumn(I)Lorg/dom4j/swing/XMLTableColumnDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->getXPath()Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public getRowXPath()Lorg/dom4j/XPath;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->rowXPath:Lorg/dom4j/XPath;

    return-object v0
.end method

.method public getValueAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Lorg/dom4j/swing/XMLTableDefinition;->getColumn(I)Lorg/dom4j/swing/XMLTableColumnDefinition;

    move-result-object v0

    monitor-enter p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    :try_start_6
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableDefinition;->rowValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/dom4j/swing/XMLTableColumnDefinition;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/dom4j/swing/XMLTableDefinition;->rowValue:Ljava/lang/Object;

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p3}, Lorg/dom4j/swing/XMLTableDefinition;->getColumn(Ljava/lang/String;)Lorg/dom4j/swing/XMLTableColumnDefinition;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lorg/dom4j/swing/XMLTableDefinition;->rowValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/dom4j/swing/XMLTableColumnDefinition;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public removeColumn(Lorg/dom4j/swing/XMLTableColumnDefinition;)V
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/swing/XMLTableDefinition;->clearCaches()V

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableDefinition;->columns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRowExpression(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/swing/XMLTableDefinition;->setRowXPath(Lorg/dom4j/XPath;)V

    return-void
.end method

.method public setRowXPath(Lorg/dom4j/XPath;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableDefinition;->rowXPath:Lorg/dom4j/XPath;

    return-void
.end method
