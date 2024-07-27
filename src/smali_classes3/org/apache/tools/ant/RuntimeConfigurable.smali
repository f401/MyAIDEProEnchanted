.class public Lorg/apache/tools/ant/RuntimeConfigurable;
.super Ljava/lang/Object;
.source "RuntimeConfigurable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;,
        Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private attributeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient attributes:Lorg/xml/sax/AttributeList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private characters:Ljava/lang/StringBuffer;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/RuntimeConfigurable;",
            ">;"
        }
    .end annotation
.end field

.field private elementTag:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private transient namespacedAttribute:Z

.field private polyType:Ljava/lang/String;

.field private proxyConfigured:Z

.field private transient wrappedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    .line 78
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    .line 81
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    .line 84
    iput-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z

    .line 87
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setElementTag(Ljava/lang/String;)V

    .line 102
    instance-of v0, p1, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lorg/apache/tools/ant/Task;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Task;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 105
    :cond_0
    return-void
.end method

.method private attrToComponent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v2, 0x3a

    .line 216
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 217
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isRestrictedAttribute(Ljava/lang/String;Lorg/apache/tools/ant/ComponentHelper;)Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 154
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    invoke-direct {v0, v3, v2, v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    .line 163
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->attrToComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lorg/apache/tools/ant/ProjectHelper;->nsToComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/ComponentHelper;->getRestrictedDefinitions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    invoke-direct {v0, v3, v2, v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 3

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 358
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addText(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 390
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    monitor-exit p0

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    monitor-exit p0

    goto :goto_0

    .line 394
    :cond_1
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addText([CII)V
    .registers 5

    monitor-enter p0

    .line 407
    if-nez p3, :cond_0

    .line 408
    monitor-exit p0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public applyPreSet(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 5

    .line 578
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 581
    :cond_1
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    :cond_3
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    .line 590
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    :cond_4
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 599
    :cond_5
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_7

    .line 600
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_6

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 602
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    .line 605
    :cond_7
    return-void
.end method

.method public getAttributeMap()Ljava/util/Hashtable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttributes()Lorg/xml/sax/AttributeList;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributes:Lorg/xml/sax/AttributeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getChild(I)Lorg/apache/tools/ant/RuntimeConfigurable;
    .registers 3

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChildren()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/ant/RuntimeConfigurable;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticBackport0;->m()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 380
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getElementTag()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPolyType()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxy()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getText()Ljava/lang/StringBuffer;
    .registers 3

    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled(Lorg/apache/tools/ant/UnknownElement;)Z
    .registers 11

    const/4 v2, 0x1

    .line 178
    iget-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 211
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v3

    .line 184
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v4

    .line 186
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->isRestrictedAttribute(Ljava/lang/String;Lorg/apache/tools/ant/ComponentHelper;)Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    move-result-object v6

    .line 189
    invoke-virtual {v6}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v7, Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;-><init>(Lorg/apache/tools/ant/RuntimeConfigurable$1;)V

    .line 198
    invoke-virtual {v6}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->getComponentName()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {v4, v1, v7, v8}, Lorg/apache/tools/ant/IntrospectionHelper;->createElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/attribute/EnableAttribute;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-interface {v1, p1, v0}, Lorg/apache/tools/ant/attribute/EnableAttribute;->isEnabled(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v6}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v2

    .line 211
    goto/16 :goto_0
.end method

.method public maybeConfigure(Lorg/apache/tools/ant/Project;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;Z)V

    .line 464
    return-void
.end method

.method public maybeConfigure(Lorg/apache/tools/ant/Project;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 487
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 488
    monitor-exit p0

    .line 558
    :goto_0
    return-void

    .line 492
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    instance-of v2, v1, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v2, :cond_9

    .line 493
    check-cast v1, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {v1}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object v4

    .line 495
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v6

    .line 497
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v7

    .line 498
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_6

    .line 499
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 500
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 502
    invoke-direct {p0, v2, v7}, Lorg/apache/tools/ant/RuntimeConfigurable;->isRestrictedAttribute(Ljava/lang/String;Lorg/apache/tools/ant/ComponentHelper;)Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    move-result-object v3

    .line 503
    invoke-virtual {v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 506
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 511
    instance-of v1, v3, Lorg/apache/tools/ant/Evaluable;

    if-eqz v1, :cond_4

    .line 512
    move-object v0, v3

    check-cast v0, Lorg/apache/tools/ant/Evaluable;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/tools/ant/Evaluable;->eval()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 516
    :goto_3
    nop

    instance-of v1, v4, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    if-eqz v1, :cond_3

    .line 517
    move-object v0, v4

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getMacroDef()Lorg/apache/tools/ant/taskdefs/MacroDef;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 518
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 519
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->isDoubleExpanding()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    move-object v5, v3

    .line 527
    :cond_3
    :try_start_2
    invoke-virtual {v6, p1, v4, v2, v5}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/tools/ant/UnsupportedAttributeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 528
    :catch_0
    move-exception v1

    .line 530
    :try_start_3
    const-string v3, "id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    invoke-virtual {p0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 532
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 514
    :cond_4
    :try_start_4
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 539
    :catch_1
    move-exception v1

    .line 540
    const-string v3, "id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 541
    throw v1

    .line 534
    :cond_5
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    invoke-virtual {p0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t support the \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnsupportedAttributeException;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" attribute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 550
    :cond_6
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_7

    .line 551
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lorg/apache/tools/ant/ProjectHelper;->addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    :cond_7
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 555
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 558
    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    move-object v4, v1

    goto/16 :goto_1
.end method

.method public reconfigure(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z

    .line 567
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    .line 568
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    .line 300
    :try_start_0
    const-string v1, "ant-type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    if-nez p2, :cond_1

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_3

    .line 304
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    .line 306
    :cond_3
    const-string v1, "refid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 307
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 308
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 310
    iput-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    .line 314
    :goto_2
    const-string v1, "id"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    if-nez p2, :cond_5

    :goto_3
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 312
    :cond_4
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 315
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 286
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    .line 289
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAttributes(Lorg/xml/sax/AttributeList;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    new-instance v0, Lorg/xml/sax/helpers/AttributeListImpl;

    invoke-direct {v0, p1}, Lorg/xml/sax/helpers/AttributeListImpl;-><init>(Lorg/xml/sax/AttributeList;)V

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributes:Lorg/xml/sax/AttributeList;

    .line 274
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 275
    invoke-interface {p1, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setCreator(Lorg/apache/tools/ant/IntrospectionHelper$Creator;)V
    .registers 2

    monitor-enter p0

    .line 228
    monitor-exit p0

    return-void
.end method

.method public setElementTag(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 431
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPolyType(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 261
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProxy(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 113
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
