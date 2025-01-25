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

    if-eqz v0, :cond_26

    .line 103
    check-cast p1, Lorg/apache/tools/ant/Task;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Task;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 105
    :cond_26
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

    if-nez v0, :cond_10

    .line 155
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    invoke-direct {v0, v3, v2, v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    .line 163
    :goto_f
    return-object v0

    .line 157
    :cond_10
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

    if-nez v0, :cond_28

    .line 161
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    invoke-direct {v0, v3, v2, v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    goto :goto_f

    .line 163
    :cond_28
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    goto :goto_f
.end method


# virtual methods
.method public addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 3

    monitor-enter p0

    .line 357
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 358
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 359
    monitor-exit p0

    return-void

    .line 356
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addText(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 390
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    move-result v0

    if-eqz v0, :cond_9

    .line 391
    monitor-exit p0

    .line 395
    :goto_8
    return-void

    .line 393
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_16

    .line 394
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_12
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1a

    .line 395
    monitor-exit p0

    goto :goto_8

    .line 394
    :cond_16
    :try_start_16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_12

    .line 389
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addText([CII)V
    .registers 5

    monitor-enter p0

    .line 407
    if-nez p3, :cond_5

    .line 408
    monitor-exit p0

    .line 412
    :goto_4
    return-void

    .line 410
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_e

    .line 411
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_e
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    .line 412
    monitor-exit p0

    goto :goto_4

    .line 406
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public applyPreSet(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 5

    .line 578
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2f

    .line 579
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_23

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 581
    :cond_23
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 587
    :cond_2f
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    if-nez v0, :cond_35

    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    :cond_35
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    .line 590
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-eqz v1, :cond_49

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    :cond_49
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 599
    :cond_4b
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_6e

    .line 600
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_61

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 602
    :cond_61
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    .line 605
    :cond_6e
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
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_9
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v1

    :catchall_10
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
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributes:Lorg/xml/sax/AttributeList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getChild(I)Lorg/apache/tools/ant/RuntimeConfigurable;
    .registers 3

    monitor-enter p0

    .line 370
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
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
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-nez v0, :cond_b

    invoke-static {}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticBackport0;->m()Ljava/util/Enumeration;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    :goto_9
    monitor-exit p0

    return-object v0

    .line 380
    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    move-result-object v0

    goto :goto_9

    .line 378
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getElementTag()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 441
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPolyType()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxy()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getText()Ljava/lang/StringBuffer;
    .registers 3

    monitor-enter p0

    .line 423
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled(Lorg/apache/tools/ant/UnknownElement;)Z
    .registers 11

    const/4 v2, 0x1

    .line 178
    iget-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    if-nez v0, :cond_7

    move v0, v2

    .line 211
    :goto_6
    return v0

    .line 181
    :cond_7
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

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

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

    if-eqz v1, :cond_23

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    :try_start_45
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
    :try_end_59
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_45 .. :try_end_59} :catch_6b

    .line 202
    if-eqz v1, :cond_23

    .line 206
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-interface {v1, p1, v0}, Lorg/apache/tools/ant/attribute/EnableAttribute;->isEnabled(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 208
    const/4 v0, 0x0

    goto :goto_6

    .line 199
    :catch_6b
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

    :cond_87
    move v0, v2

    .line 211
    goto/16 :goto_6
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
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a0

    if-eqz v1, :cond_7

    .line 488
    monitor-exit p0

    .line 558
    :goto_6
    return-void

    .line 492
    :cond_7
    :try_start_7
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    instance-of v2, v1, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v2, :cond_ff

    .line 493
    check-cast v1, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {v1}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object v4

    .line 495
    :goto_13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v6

    .line 497
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v7

    .line 498
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_e2

    .line 499
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2b
    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 500
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    invoke-direct {p0, v1, v7}, Lorg/apache/tools/ant/RuntimeConfigurable;->isRestrictedAttribute(Ljava/lang/String;Lorg/apache/tools/ant/ComponentHelper;)Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    move-result-object v3

    .line 503
    invoke-virtual {v3}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 506
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 511
    instance-of v2, v3, Lorg/apache/tools/ant/Evaluable;

    if-eqz v2, :cond_a3

    .line 512
    move-object v0, v3

    check-cast v0, Lorg/apache/tools/ant/Evaluable;

    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/tools/ant/Evaluable;->eval()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    .line 516
    :goto_5a
    nop

    instance-of v2, v4, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    if-eqz v2, :cond_8c

    .line 517
    move-object v0, v4

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getMacroDef()Lorg/apache/tools/ant/taskdefs/MacroDef;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 518
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 519
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->isDoubleExpanding()Z
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_a0

    move-result v2

    if-nez v2, :cond_8c

    move-object v5, v3

    .line 527
    :cond_8c
    :try_start_8c
    invoke-virtual {v6, p1, v4, v1, v5}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8f
    .catch Lorg/apache/tools/ant/UnsupportedAttributeException; {:try_start_8c .. :try_end_8f} :catch_90
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_8c .. :try_end_8f} :catch_b1
    .catchall {:try_start_8c .. :try_end_8f} :catchall_a0

    goto :goto_2b

    .line 528
    :catch_90
    move-exception v2

    .line 530
    :try_start_91
    const-string v3, "id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 531
    invoke-virtual {p0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_bb

    .line 532
    throw v2
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_a0

    .line 486
    :catchall_a0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 514
    :cond_a3
    :try_start_a3
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    goto :goto_5a

    .line 539
    :catch_b1
    move-exception v2

    .line 540
    const-string v3, "id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 541
    throw v2

    .line 534
    :cond_bb
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    invoke-virtual {p0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t support the \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v2}, Lorg/apache/tools/ant/UnsupportedAttributeException;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" attribute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 550
    :cond_e2
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_f0

    .line 551
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lorg/apache/tools/ant/ProjectHelper;->addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    :cond_f0
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;

    if-eqz v1, :cond_f9

    .line 555
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    :cond_f9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_fc
    .catchall {:try_start_a3 .. :try_end_fc} :catchall_a0

    .line 558
    monitor-exit p0

    goto/16 :goto_6

    :cond_ff
    move-object v4, v1

    goto/16 :goto_13
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
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 326
    monitor-exit p0

    return-void

    .line 324
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    .line 300
    :try_start_2
    const-string v1, "ant-type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 301
    if-nez p2, :cond_10

    :goto_c
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_4c

    .line 318
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 301
    :cond_10
    :try_start_10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 303
    :cond_15
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_20

    .line 304
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    .line 306
    :cond_20
    const-string v1, "refid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

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
    :goto_3f
    const-string v1, "id"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 315
    if-nez p2, :cond_55

    :goto_49
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_4c

    goto :goto_e

    .line 299
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 312
    :cond_4f
    :try_start_4f
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 315
    :cond_55
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_4c

    move-result-object v0

    goto :goto_49
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 286
    :try_start_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    .line 289
    :cond_c
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 290
    monitor-exit p0

    return-void

    .line 285
    :catchall_11
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
    :try_start_1
    new-instance v0, Lorg/xml/sax/helpers/AttributeListImpl;

    invoke-direct {v0, p1}, Lorg/xml/sax/helpers/AttributeListImpl;-><init>(Lorg/xml/sax/AttributeList;)V

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributes:Lorg/xml/sax/AttributeList;

    .line 274
    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 275
    invoke-interface {p1, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 277
    :cond_1d
    monitor-exit p0

    return-void

    .line 272
    :catchall_1f
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
    :try_start_1
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 432
    monitor-exit p0

    return-void

    .line 430
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPolyType(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 261
    :try_start_1
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 262
    monitor-exit p0

    return-void

    .line 260
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProxy(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 113
    :try_start_1
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 115
    monitor-exit p0

    return-void

    .line 112
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
