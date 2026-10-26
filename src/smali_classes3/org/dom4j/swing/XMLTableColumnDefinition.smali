.class public Lorg/dom4j/swing/XMLTableColumnDefinition;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NODE_TYPE:I = 0x3

.field public static final NUMBER_TYPE:I = 0x2

.field public static final OBJECT_TYPE:I = 0x0

.field public static final STRING_TYPE:I = 0x1

.field static class$java$lang$Number:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$dom4j$Node:Ljava/lang/Class;


# instance fields
.field private columnNameXPath:Lorg/dom4j/XPath;

.field private name:Ljava/lang/String;

.field private type:I

.field private xpath:Lorg/dom4j/XPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    invoke-virtual {p0, p2}, Lorg/dom4j/swing/XMLTableColumnDefinition;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/XPath;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/XPath;Lorg/dom4j/XPath;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseType(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "number"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "node"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1

    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public getColumnClass()Ljava/lang/Class;
    .locals 1

    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$Object:Ljava/lang/Class;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$Number:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$Number:Ljava/lang/Class;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$org$dom4j$Node:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.dom4j.Node"

    invoke-static {v0}, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$org$dom4j$Node:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$org$dom4j$Node:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/dom4j/swing/XMLTableColumnDefinition;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getColumnNameXPath()Lorg/dom4j/XPath;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    return v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getXPath()Lorg/dom4j/XPath;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    return-object v0
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .locals 3

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

.method public setColumnNameXPath(Lorg/dom4j/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    return-void
.end method

.method public setXPath(Lorg/dom4j/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    return-void
.end method
