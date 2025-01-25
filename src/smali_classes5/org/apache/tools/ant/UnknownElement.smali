.class public Lorg/apache/tools/ant/UnknownElement;
.super Lorg/apache/tools/ant/Task;
.source "UnknownElement.java"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/UnknownElement;",
            ">;"
        }
    .end annotation
.end field

.field private final elementName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private presetDefed:Z

.field private qname:Ljava/lang/String;

.field private realThing:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/UnknownElement;->presetDefed:Z

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private handleChild(Ljava/lang/String;Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/Object;Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Z
    .registers 13

    const/4 v6, 0x0

    .line 563
    invoke-virtual {p4}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p2, p1, v4, v0, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsNestedElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 567
    :try_start_17
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/IntrospectionHelper;->getElementCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$Creator;
    :try_end_22
    .catch Lorg/apache/tools/ant/UnsupportedElementException; {:try_start_17 .. :try_end_22} :catch_72

    move-result-object v2

    .line 577
    invoke-virtual {p5}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->setPolyType(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v2}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->create()Ljava/lang/Object;

    move-result-object v0

    .line 580
    instance-of v1, v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz v1, :cond_7e

    .line 581
    check-cast v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    .line 583
    invoke-virtual {v2}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->getRealObject()Ljava/lang/Object;

    move-result-object v1

    .line 584
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->getPreSets()Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/tools/ant/UnknownElement;->applyPreSet(Lorg/apache/tools/ant/UnknownElement;)V

    .line 586
    :goto_3f
    invoke-virtual {p5, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setCreator(Lorg/apache/tools/ant/IntrospectionHelper$Creator;)V

    .line 587
    invoke-virtual {p5, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 588
    instance-of v0, v1, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_55

    move-object v0, v1

    .line 589
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 590
    invoke-virtual {v0, p5}, Lorg/apache/tools/ant/Task;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 591
    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 594
    :cond_55
    instance-of v0, v1, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_63

    move-object v0, v1

    .line 595
    check-cast v0, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p4}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/ProjectComponent;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 597
    :cond_63
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p5, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    .line 598
    invoke-virtual {p4, v1, p5}, Lorg/apache/tools/ant/UnknownElement;->handleChildren(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 599
    invoke-virtual {v2}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->store()V

    .line 600
    const/4 v0, 0x1

    .line 602
    :goto_71
    return v0

    .line 571
    :catch_72
    move-exception v0

    .line 572
    invoke-virtual {p2}, Lorg/apache/tools/ant/IntrospectionHelper;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_7b

    move v0, v6

    .line 576
    goto :goto_71

    .line 573
    :cond_7b
    throw v0

    :cond_7c
    move v0, v6

    .line 602
    goto :goto_71

    :cond_7e
    move-object v1, v0

    goto :goto_3f
.end method


# virtual methods
.method public addChild(Lorg/apache/tools/ant/UnknownElement;)V
    .registers 3

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-nez v0, :cond_b

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    .line 322
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public applyPreSet(Lorg/apache/tools/ant/UnknownElement;)V
    .registers 4

    .line 402
    iget-boolean v0, p0, Lorg/apache/tools/ant/UnknownElement;->presetDefed:Z

    if-eqz v0, :cond_5

    .line 415
    :goto_4
    return-void

    .line 406
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->applyPreSet(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 407
    iget-object v0, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz v0, :cond_24

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    iget-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz v1, :cond_22

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 412
    :cond_22
    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    .line 414
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/UnknownElement;->presetDefed:Z

    goto :goto_4
.end method

.method public configure(Ljava/lang/Object;)V
    .registers 5

    .line 176
    if-nez p1, :cond_3

    .line 208
    :goto_2
    return-void

    .line 179
    :cond_3
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 182
    const/4 v0, 0x0

    .line 183
    instance-of v1, p1, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_2f

    move-object v0, p1

    .line 184
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 186
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Task;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 192
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lorg/apache/tools/ant/Task;

    invoke-virtual {v2, p0, v1}, Lorg/apache/tools/ant/Target;->replaceChild(Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/Task;)V

    .line 201
    :cond_2f
    if-eqz v0, :cond_3c

    .line 202
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->maybeConfigure()V

    .line 207
    :goto_34
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/UnknownElement;->handleChildren(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V

    goto :goto_2

    .line 204
    :cond_3c
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    goto :goto_34
.end method

.method public copy(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/UnknownElement;
    .registers 7

    .line 668
    new-instance v2, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setNamespace(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 671
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setQName(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setTaskType(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 675
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    if-nez v0, :cond_84

    .line 676
    new-instance v0, Lorg/apache/tools/ant/Target;

    invoke-direct {v0}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 677
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 678
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 682
    :goto_44
    new-instance v3, Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->setPolyType(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v0

    .line 686
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 680
    :cond_84
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    goto :goto_44

    .line 689
    :cond_8c
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChildren()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 692
    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 693
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/UnknownElement;->copy(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 695
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_ab

    .line 697
    :cond_cc
    return-object v2
.end method

.method public execute()V
    .registers 4

    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 293
    if-nez v0, :cond_6

    .line 311
    :cond_5
    :goto_5
    return-void

    .line 298
    :cond_6
    :try_start_6
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_f

    .line 299
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->execute()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_23

    .line 306
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 307
    iput-object v2, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    goto :goto_5

    .line 306
    :catchall_23
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 307
    iput-object v2, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 310
    :cond_37
    throw v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/UnknownElement;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    return-object v0
.end method

.method protected getComponentName()Ljava/lang/String;
    .registers 3

    .line 390
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method protected getNotFoundException(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;
    .registers 6

    .line 502
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 503
    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/ComponentHelper;->diagnoseCreationFailure(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    return-object v1
.end method

.method public getQName()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    return-object v0
.end method

.method public getRealThing()Ljava/lang/Object;
    .registers 2

    .line 540
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Lorg/apache/tools/ant/Task;
    .registers 3

    .line 525
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 526
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_9

    .line 527
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 529
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 3

    .line 513
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 514
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-nez v1, :cond_b

    invoke-super {p0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 515
    :cond_b
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;
    .registers 2

    .line 150
    invoke-super {p0}, Lorg/apache/tools/ant/Task;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    return-object v0
.end method

.method protected handleChildren(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 342
    instance-of v1, p1, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v1, :cond_98

    .line 343
    check-cast p1, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p1}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object v4

    .line 346
    :goto_a
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 348
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v3

    .line 350
    iget-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz v1, :cond_97

    .line 351
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 352
    const/4 v1, 0x0

    move v7, v1

    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 353
    invoke-virtual {p2, v7}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChild(I)Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v6

    .line 354
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/UnknownElement;

    .line 356
    :try_start_34
    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/RuntimeConfigurable;->isEnabled(Lorg/apache/tools/ant/UnknownElement;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 357
    invoke-virtual {v5}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 358
    invoke-static {v1, v9}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v3, v2, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsNestedElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 381
    :cond_4c
    :goto_4c
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_24

    :cond_50
    move-object v1, p0

    .line 364
    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/UnknownElement;->handleChild(Ljava/lang/String;Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/Object;Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 366
    instance-of v1, v4, Lorg/apache/tools/ant/TaskContainer;

    if-nez v1, :cond_8f

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 368
    invoke-virtual {v5}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/tools/ant/IntrospectionHelper;->throwNotSupported(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_66
    .catch Lorg/apache/tools/ant/UnsupportedElementException; {:try_start_34 .. :try_end_66} :catch_67

    goto :goto_4c

    .line 376
    :catch_67
    move-exception v1

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-virtual {p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t support the nested \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnsupportedElementException;->getElement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" element."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 372
    :cond_8f
    :try_start_8f
    move-object v0, v4

    check-cast v0, Lorg/apache/tools/ant/TaskContainer;

    move-object v1, v0

    .line 373
    invoke-interface {v1, v5}, Lorg/apache/tools/ant/TaskContainer;->addTask(Lorg/apache/tools/ant/Task;)V
    :try_end_96
    .catch Lorg/apache/tools/ant/UnsupportedElementException; {:try_start_8f .. :try_end_96} :catch_67

    goto :goto_4c

    .line 384
    :cond_97
    return-void

    :cond_98
    move-object v4, p1

    goto/16 :goto_a
.end method

.method protected handleErrorFlush(Ljava/lang/String;)V
    .registers 4

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 280
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_c

    .line 281
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    .line 285
    :goto_b
    return-void

    .line 283
    :cond_c
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected handleErrorOutput(Ljava/lang/String;)V
    .registers 4

    .line 265
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 266
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_c

    .line 267
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    .line 271
    :goto_b
    return-void

    .line 269
    :cond_c
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected handleFlush(Ljava/lang/String;)V
    .registers 4

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 252
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_c

    .line 253
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    .line 257
    :goto_b
    return-void

    .line 255
    :cond_c
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected handleInput([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 239
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_d

    .line 240
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result v0

    .line 242
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result v0

    goto :goto_c
.end method

.method protected handleOutput(Ljava/lang/String;)V
    .registers 4

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 217
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_c

    .line 218
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    .line 222
    :goto_b
    return-void

    .line 220
    :cond_c
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected makeObject(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;
    .registers 7

    .line 428
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->isEnabled(Lorg/apache/tools/ant/UnknownElement;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 429
    const/4 v1, 0x0

    .line 463
    :cond_7
    :goto_7
    return-object v1

    .line 431
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 433
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getComponentName()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_95

    .line 438
    instance-of v1, v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz v1, :cond_9c

    .line 439
    check-cast v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    .line 440
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->createObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_77

    .line 446
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->getPreSets()Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/UnknownElement;->applyPreSet(Lorg/apache/tools/ant/UnknownElement;)V

    .line 447
    instance-of v0, v1, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_4d

    move-object v0, v1

    .line 448
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 449
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->init()V

    .line 454
    :cond_4d
    :goto_4d
    instance-of v0, v1, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v0, :cond_5a

    move-object v0, v1

    .line 455
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0, v1, p2}, Lorg/apache/tools/ant/UnknownElement;->makeObject(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;

    move-result-object v1

    .line 457
    :cond_5a
    instance-of v0, v1, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_68

    move-object v0, v1

    .line 458
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 460
    :cond_68
    instance-of v0, v1, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 461
    check-cast v0, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/ProjectComponent;->setLocation(Lorg/apache/tools/ant/Location;)V

    goto :goto_7

    .line 442
    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->getPreSets()Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getComponentName()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/UnknownElement;->getNotFoundException(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 436
    :cond_95
    const-string v0, "task or type"

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/UnknownElement;->getNotFoundException(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    :cond_9c
    move-object v1, v0

    goto :goto_4d
.end method

.method protected makeTask(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Lorg/apache/tools/ant/Task;
    .registers 5

    .line 477
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_1f

    .line 480
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Task;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 483
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->init()V

    .line 485
    :cond_1f
    return-object v0
.end method

.method public maybeConfigure()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 163
    if-eqz v0, :cond_5

    .line 167
    :goto_4
    return-void

    .line 166
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lorg/apache/tools/ant/UnknownElement;->makeObject(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/UnknownElement;->configure(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public setNamespace(Ljava/lang/String;)V
    .registers 3

    .line 115
    const-string v0, "ant:current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/apache/tools/ant/ComponentHelper;->getCurrentAntlibUri()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_14
    if-nez v0, :cond_18

    const-string v0, ""

    :cond_18
    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    .line 121
    return-void

    :cond_1b
    move-object v0, p1

    goto :goto_14
.end method

.method public setQName(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setRealThing(Ljava/lang/Object;)V
    .registers 2

    .line 549
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 550
    return-void
.end method

.method public similar(Ljava/lang/Object;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 611
    if-nez p1, :cond_5

    .line 659
    :cond_4
    :goto_4
    return v1

    .line 614
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 617
    check-cast p1, Lorg/apache/tools/ant/UnknownElement;

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/apache/tools/ant/UnknownElement$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 629
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v0

    .line 630
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v3

    .line 629
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 642
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-nez v0, :cond_83

    move v4, v1

    .line 643
    :goto_74
    if-nez v4, :cond_89

    .line 644
    iget-object v0, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    :cond_80
    move v0, v2

    :goto_81
    move v1, v0

    goto :goto_4

    .line 642
    :cond_83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    goto :goto_74

    .line 646
    :cond_89
    iget-object v0, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 649
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_4

    move v3, v1

    .line 652
    :goto_94
    if-ge v3, v4, :cond_ae

    .line 654
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 655
    iget-object v5, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/UnknownElement;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 652
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_94

    :cond_ae
    move v1, v2

    .line 659
    goto/16 :goto_4

    :cond_b1
    move v0, v1

    goto :goto_81
.end method
