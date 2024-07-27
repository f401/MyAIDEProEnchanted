.class public Lorg/apache/tools/ant/taskdefs/optional/Script;
.super Lorg/apache/tools/ant/Task;
.source "Script.java"


# instance fields
.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 36
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    const-string v1, "ANT"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 99
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    .line 118
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 71
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .registers 3

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 43
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 44
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 45
    return-void
.end method

.method public setSetBeans(Z)V
    .registers 3

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    .line 132
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 4

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    .line 81
    return-void
.end method
