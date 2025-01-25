.class public Lorg/apache/tools/ant/taskdefs/CallTarget;
.super Lorg/apache/tools/ant/Task;
.source "CallTarget.java"


# instance fields
.field private callee:Lorg/apache/tools/ant/taskdefs/Ant;

.field private inheritAll:Z

.field private inheritRefs:Z

.field private targetSet:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritAll:Z

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritRefs:Z

    .line 60
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    return-void
.end method


# virtual methods
.method public addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_7

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 166
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    .line 168
    return-void
.end method

.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_7

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 142
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 143
    return-void
.end method

.method public addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_7

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 130
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V

    .line 131
    return-void
.end method

.method public createParam()Lorg/apache/tools/ant/taskdefs/Property;
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_7

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 117
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->createProperty()Lorg/apache/tools/ant/taskdefs/Property;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_7

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 98
    :cond_7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    if-eqz v0, :cond_2e

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "ant.file"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setAntfile(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritAll:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritAll(Z)V

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritRefs:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritRefs(Z)V

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->execute()V

    .line 107
    return-void

    .line 99
    :cond_2e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Attribute target or at least one nested target is required."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public handleErrorFlush(Ljava/lang/String;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_8

    .line 251
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorFlush(Ljava/lang/String;)V

    .line 255
    :goto_7
    return-void

    .line 253
    :cond_8
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public handleErrorOutput(Ljava/lang/String;)V
    .registers 3

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_8

    .line 235
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorOutput(Ljava/lang/String;)V

    .line 239
    :goto_7
    return-void

    .line 237
    :cond_8
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public handleFlush(Ljava/lang/String;)V
    .registers 3

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_8

    .line 218
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleFlush(Ljava/lang/String;)V

    .line 222
    :goto_7
    return-void

    .line 220
    :cond_8
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public handleInput([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_9

    .line 203
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Ant;->handleInput([BII)I

    move-result v0

    .line 205
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result v0

    goto :goto_8
.end method

.method public handleOutput(Ljava/lang/String;)V
    .registers 3

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleOutput(Ljava/lang/String;)V

    .line 184
    :goto_7
    return-void

    .line 182
    :cond_8
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public init()V
    .registers 2

    .line 85
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Ant;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 86
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->init()V

    .line 87
    return-void
.end method

.method public setInheritAll(Z)V
    .registers 2

    .line 68
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritAll:Z

    .line 69
    return-void
.end method

.method public setInheritRefs(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritRefs:Z

    .line 78
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_7

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 153
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setTarget(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    .line 155
    return-void
.end method
