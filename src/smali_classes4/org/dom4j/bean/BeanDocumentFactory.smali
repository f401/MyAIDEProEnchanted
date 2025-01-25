.class public Lorg/dom4j/bean/BeanDocumentFactory;
.super Lorg/dom4j/DocumentFactory;


# static fields
.field static class$org$dom4j$bean$BeanDocumentFactory:Ljava/lang/Class;

.field private static singleton:Lorg/dom4j/bean/BeanDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/dom4j/bean/BeanDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/bean/BeanDocumentFactory;-><init>()V

    sput-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->singleton:Lorg/dom4j/bean/BeanDocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .registers 1

    sget-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->singleton:Lorg/dom4j/bean/BeanDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 5

    new-instance v0, Lorg/dom4j/tree/DefaultAttribute;

    invoke-direct {v0, p2, p3}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createBean(Lorg/dom4j/QName;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createBean(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .registers 6

    const-string v0, "class"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    :try_start_8
    sget-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->class$org$dom4j$bean$BeanDocumentFactory:Ljava/lang/Class;

    if-nez v0, :cond_22

    const-string v0, "org.dom4j.bean.BeanDocumentFactory"

    invoke-static {v0}, Lorg/dom4j/bean/BeanDocumentFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->class$org$dom4j$bean$BeanDocumentFactory:Ljava/lang/Class;

    :goto_14
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    sget-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->class$org$dom4j$bean$BeanDocumentFactory:Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_25

    goto :goto_14

    :catch_25
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanDocumentFactory;->handleException(Ljava/lang/Exception;)V

    :cond_29
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanDocumentFactory;->createBean(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v0, p1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v0, p1, v1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public createElement(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Lorg/dom4j/Element;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/bean/BeanDocumentFactory;->createBean(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v0, p1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v0, p1, v1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "#### Warning: couldn\'t create bean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
