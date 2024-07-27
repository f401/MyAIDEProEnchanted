.class public Lorg/apache/tools/ant/taskdefs/MacroInstance;
.super Lorg/apache/tools/ant/Task;
.source "MacroInstance.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicAttribute;
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/MacroInstance$Element;
    }
.end annotation


# static fields
.field private static final STATE_EXPECT_BRACKET:I = 0x1

.field private static final STATE_EXPECT_NAME:I = 0x2

.field private static final STATE_NORMAL:I


# instance fields
.field private implicitTag:Ljava/lang/String;

.field private localAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nsElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;",
            ">;"
        }
    .end annotation
.end field

.field private presentElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/UnknownElement;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private unknownElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    .line 52
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    .line 55
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->implicitTag:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    return-void
.end method

.method private copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 253
    new-instance v3, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setNamespace(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 256
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setQName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setTaskType(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getBackTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 261
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Lorg/apache/tools/ant/Target;

    invoke-direct {v0}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 263
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 264
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 268
    :goto_1
    new-instance v4, Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->setPolyType(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v4, v1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChildren()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 281
    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    .line 282
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_c

    .line 284
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 286
    :goto_4
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getNsElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    .line 288
    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-direct {p0, v1, p2}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 291
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_3

    .line 292
    :cond_5
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isImplicit()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 293
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isOptional()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 298
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 299
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 301
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_5

    .line 294
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Missing nested elements for implicit element %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 304
    :cond_8
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 305
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    .line 306
    if-nez v1, :cond_9

    .line 307
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isOptional()Z

    move-result v1

    if-nez v1, :cond_3

    .line 308
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Required nested element %s missing"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 314
    :cond_9
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 317
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText(Ljava/lang/String;)V

    .line 319
    :cond_a
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_3

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 322
    invoke-direct {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 324
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_6

    .line 329
    :cond_b
    return-object v3

    :cond_c
    move-object v2, v0

    goto/16 :goto_4
.end method

.method private getNsElements()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    .line 102
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;

    .line 105
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isImplicit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->implicitTag:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->nsElements:Ljava/util/Map;

    return-object v0
.end method

.method private macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v10, 0x40

    const/4 v1, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-object v3

    .line 173
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v4, v1

    move v0, v1

    move-object v2, v3

    :goto_1
    if-ge v4, v7, :cond_6

    aget-char v8, v6, v4

    .line 178
    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 203
    :pswitch_0
    const/16 v9, 0x7d

    if-ne v8, v9, :cond_2

    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    if-nez v0, :cond_1

    .line 208
    const-string v0, "@{"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    move-object v2, v3

    .line 215
    goto :goto_2

    .line 212
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 216
    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 187
    :pswitch_1
    const/16 v0, 0x7b

    if-ne v8, v0, :cond_3

    .line 188
    const/4 v0, 0x2

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 190
    :cond_3
    if-ne v8, v10, :cond_4

    .line 192
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 198
    goto :goto_2

    .line 180
    :pswitch_2
    if-ne v8, v10, :cond_5

    .line 181
    const/4 v0, 0x1

    goto :goto_2

    .line 183
    :cond_5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 223
    :cond_6
    packed-switch v0, :pswitch_data_1

    .line 225
    :goto_4
    :pswitch_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 233
    :pswitch_4
    const-string v0, "@{"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 227
    :pswitch_5
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 223
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private processTasks()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->implicitTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 128
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 129
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getNsElements()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 134
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 137
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Element %s already present"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 132
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "unsupported element %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->unknownElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not implemented any more"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 341
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getNsElements()Ljava/util/Map;

    .line 342
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->processTasks()V

    .line 343
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    .line 344
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 345
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 346
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    if-nez v1, :cond_0

    const-string v4, "description"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_0
    if-nez v1, :cond_1

    .line 351
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getDefault()Ljava/lang/String;

    move-result-object v1

    .line 352
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-direct {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroSubs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 354
    :cond_1
    if-eqz v1, :cond_2

    .line 358
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "required attribute %s not set"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 361
    :cond_3
    const-string v0, "id"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 364
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 365
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getDefault()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getOptional()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_9

    .line 369
    :cond_4
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    .line 371
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getTrim()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    .line 374
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_8
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown attribute"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v8, :cond_b

    const-string v0, "s "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "required text missing"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->text:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 376
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"%s\" macro does not support nested text data."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 382
    :cond_b
    const-string v0, " "

    goto :goto_1

    .line 386
    :cond_c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getNestedTask()Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->copy(Lorg/apache/tools/ant/UnknownElement;Z)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->init()V

    .line 388
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lorg/apache/tools/ant/property/LocalProperties;->enterScope()V

    .line 391
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->perform()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 402
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    .line 403
    invoke-virtual {v1}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    .line 404
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getBackTrace()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 394
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->presentElements:Ljava/util/Map;

    .line 402
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->localAttributes:Ljava/util/Map;

    .line 403
    invoke-virtual {v1}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    .line 404
    throw v0

    .line 397
    :cond_d
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 398
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getMacroDef()Lorg/apache/tools/ant/taskdefs/MacroDef;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    return-object v0
.end method

.method public setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->map:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public setMacroDef(Lorg/apache/tools/ant/taskdefs/MacroDef;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroInstance;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    .line 66
    return-void
.end method
