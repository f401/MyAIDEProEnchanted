.class public Lorg/dom4j/QName;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static class$org$dom4j$tree$QNameCache:Ljava/lang/Class;

.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private hashCode:I

.field private name:Ljava/lang/String;

.field private transient namespace:Lorg/dom4j/Namespace;

.field private qualifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    :try_start_3
    const-string v1, "org.dom4j.QName.singleton.strategy"

    const-string v2, "org.dom4j.util.SimpleSingleton"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_2d

    move-result-object v0

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/util/SingletonStrategy;

    sput-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    sget-object v1, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    sget-object v0, Lorg/dom4j/QName;->class$org$dom4j$tree$QNameCache:Ljava/lang/Class;

    if-nez v0, :cond_35

    const-string v0, "org.dom4j.tree.QNameCache"

    invoke-static {v0}, Lorg/dom4j/QName;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/dom4j/QName;->class$org$dom4j$tree$QNameCache:Ljava/lang/Class;

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_38

    :goto_2c
    return-void

    :catch_2d
    move-exception v1

    :try_start_2e
    const-string v1, "org.dom4j.util.SimpleSingleton"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_3a

    move-result-object v0

    goto :goto_f

    :cond_35
    :try_start_35
    sget-object v0, Lorg/dom4j/QName;->class$org$dom4j$tree$QNameCache:Ljava/lang/Class;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_37} :catch_38

    goto :goto_25

    :catch_38
    move-exception v0

    goto :goto_2c

    :catch_3a
    move-exception v1

    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    if-nez p2, :cond_d

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :cond_d
    iput-object p2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    if-nez p2, :cond_f

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :cond_f
    iput-object p2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

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

.method public static get(Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 2

    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 3

    if-nez p1, :cond_b

    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_a
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 5

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_8
    if-nez p2, :cond_f

    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    :cond_17
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_e

    :cond_24
    if-nez p2, :cond_2b

    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_e

    :cond_2b
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_e
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .registers 3

    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 4

    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method private static getCache()Lorg/dom4j/tree/QNameCache;
    .registers 1

    sget-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v0}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/QNameCache;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lorg/dom4j/QName;

    if-eqz v2, :cond_33

    check-cast p1, Lorg/dom4j/QName;

    invoke-virtual {p0}, Lorg/dom4j/QName;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/dom4j/QName;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_33

    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_31
    move v0, v1

    goto :goto_4

    :cond_33
    move v0, v1

    goto :goto_4
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getQualifiedName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    return-object v0

    :cond_2e
    iget-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    goto :goto_2b
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_20

    const v0, 0xbabe

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    :cond_20
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    return v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " [name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " namespace: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
