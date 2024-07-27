.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;
.super Lorg/apache/tools/ant/Task;
.source "ScriptDefBase.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicConfigurator;


# instance fields
.field private attributes:Ljava/util/Map;
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

.field private nestedElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->nestedElementMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->attributes:Ljava/util/Map;

    return-void
.end method

.method private getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
    .registers 4

    .line 56
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getTaskType()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v2, "org.apache.ant.scriptrepo"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 59
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    .line 64
    if-eqz v0, :cond_0

    .line 67
    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script definition not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script repository not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$createDynamicElement$0(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->text:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->nestedElementMap:Ljava/util/Map;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase$$ExternalSyntheticLambda0;

    .line 79
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->createNestedElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v1
.end method

.method public execute()V
    .registers 4

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->attributes:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->nestedElementMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->executeScript(Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;)V

    .line 53
    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .registers 3

    .line 129
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->isAttributeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void

    .line 95
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<%s> does not support the \"%s\" attribute"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getTaskType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
