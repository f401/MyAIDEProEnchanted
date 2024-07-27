.class public abstract Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "AbstractScriptComponent.java"


# instance fields
.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected executeScript(Ljava/lang/String;)V
    .registers 3

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->initScriptRunner()V

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-object v0
.end method

.method protected initScriptRunner()V
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    goto :goto_0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 116
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    .line 135
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 50
    invoke-super {p0, p1}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 51
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 52
    return-void
.end method

.method public setSetBeans(Z)V
    .registers 3

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    .line 158
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    .line 70
    return-void
.end method
