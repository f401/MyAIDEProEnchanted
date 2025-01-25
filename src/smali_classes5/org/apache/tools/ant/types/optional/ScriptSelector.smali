.class public Lorg/apache/tools/ant/types/optional/ScriptSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "ScriptSelector.java"


# instance fields
.field private basedir:Ljava/io/File;

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    return-void
.end method

.method private init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    if-eqz v0, :cond_5

    .line 97
    :goto_4
    return-void

    .line 96
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    goto :goto_4
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getBasedir()Ljava/io/File;
    .registers 2

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->basedir:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->selected:Z

    return v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 6

    .line 172
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/ScriptSelector;->init()V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/optional/ScriptSelector;->setSelected(Z)V

    .line 174
    iput-object p3, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->file:Ljava/io/File;

    .line 175
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->basedir:Ljava/io/File;

    .line 176
    iput-object p2, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->filename:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v1, "basedir"

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v1, "file"

    invoke-virtual {v0, v1, p3}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v1, "ant_selector"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptSelector;->isSelected()Z

    move-result v0

    return v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 124
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    .line 143
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 232
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 66
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 222
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->selected:Z

    .line 223
    return-void
.end method

.method public setSetBeans(Z)V
    .registers 3

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    .line 157
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    .line 106
    return-void
.end method
