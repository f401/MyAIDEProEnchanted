.class public Lorg/dom4j/swing/XMLTableModel;
.super Ljavax/swing/table/AbstractTableModel;


# instance fields
.field private definition:Lorg/dom4j/swing/XMLTableDefinition;

.field private rows:Ljava/util/List;

.field private source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/dom4j/Document;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1}, Lorg/dom4j/swing/XMLTableDefinition;->load(Lorg/dom4j/Document;)Lorg/dom4j/swing/XMLTableDefinition;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/dom4j/swing/XMLTableModel;-><init>(Lorg/dom4j/swing/XMLTableDefinition;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1}, Lorg/dom4j/swing/XMLTableDefinition;->load(Lorg/dom4j/Element;)Lorg/dom4j/swing/XMLTableDefinition;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/dom4j/swing/XMLTableModel;-><init>(Lorg/dom4j/swing/XMLTableDefinition;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/swing/XMLTableDefinition;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    iput-object p2, p0, Lorg/dom4j/swing/XMLTableModel;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getColumnClass(I)Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    invoke-virtual {v0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->getColumnClass(I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    invoke-virtual {v0}, Lorg/dom4j/swing/XMLTableDefinition;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    invoke-virtual {v0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->getColumnNameXPath(I)Lorg/dom4j/XPath;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Evaluating column xpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/dom4j/swing/XMLTableModel;->source:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/swing/XMLTableModel;->source:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    invoke-virtual {v0, p1}, Lorg/dom4j/swing/XMLTableDefinition;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefinition()Lorg/dom4j/swing/XMLTableDefinition;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    return-object v0
.end method

.method public getRowCount()I
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/swing/XMLTableModel;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRowValue(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/swing/XMLTableModel;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->rows:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    invoke-virtual {v0}, Lorg/dom4j/swing/XMLTableDefinition;->getRowXPath()Lorg/dom4j/XPath;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/swing/XMLTableModel;->source:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->rows:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->rows:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/swing/XMLTableModel;->getRowValue(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    invoke-virtual {v1, v0, p2}, Lorg/dom4j/swing/XMLTableDefinition;->getValueAt(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/swing/XMLTableModel;->handleException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
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

.method public setDefinition(Lorg/dom4j/swing/XMLTableDefinition;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableModel;->definition:Lorg/dom4j/swing/XMLTableDefinition;

    return-void
.end method

.method public setSource(Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableModel;->source:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableModel;->rows:Ljava/util/List;

    return-void
.end method
