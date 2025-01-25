.class public Lorg/apache/tools/ant/types/optional/ScriptFilter;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "ScriptFilter.java"


# instance fields
.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method

.method private init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    if-eqz v0, :cond_5

    .line 81
    :goto_4
    return-void

    .line 80
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    goto :goto_4
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/ScriptFilter;->init()V

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/optional/ScriptFilter;->setToken(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v1, "ant_filter"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptFilter;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 150
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    .line 169
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 58
    invoke-super {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 60
    return-void
.end method

.method public setSetBeans(Z)V
    .registers 3

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    .line 184
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    .line 124
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->token:Ljava/lang/String;

    .line 90
    return-void
.end method
