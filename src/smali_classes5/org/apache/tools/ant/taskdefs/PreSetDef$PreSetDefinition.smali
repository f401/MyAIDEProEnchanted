.class public Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;
.super Lorg/apache/tools/ant/AntTypeDefinition;
.source "PreSetDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/PreSetDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreSetDefinition"
.end annotation


# instance fields
.field private element:Lorg/apache/tools/ant/UnknownElement;

.field private parent:Lorg/apache/tools/ant/AntTypeDefinition;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/UnknownElement;)V
    .registers 4

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 120
    instance-of v0, p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz v0, :cond_10

    .line 121
    check-cast p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    .line 122
    iget-object v0, p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->element:Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/UnknownElement;->applyPreSet(Lorg/apache/tools/ant/UnknownElement;)V

    .line 123
    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    .line 125
    :cond_10
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    .line 126
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->element:Lorg/apache/tools/ant/UnknownElement;

    .line 127
    return-void
.end method


# virtual methods
.method public checkClass(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->checkClass(Lorg/apache/tools/ant/Project;)V

    .line 226
    return-void
.end method

.method public create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .registers 2

    .line 257
    return-object p0
.end method

.method public createObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .registers 3

    .line 236
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPreSets()Lorg/apache/tools/ant/UnknownElement;
    .registers 2

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->element:Lorg/apache/tools/ant/UnknownElement;

    return-object v0
.end method

.method public getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .registers 5

    .line 269
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_29

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    if-eqz v1, :cond_29

    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    .line 270
    invoke-virtual {v1, v0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->element:Lorg/apache/tools/ant/UnknownElement;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->element:Lorg/apache/tools/ant/UnknownElement;

    .line 271
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    .line 269
    :goto_28
    return v0

    .line 271
    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public setAdaptToClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdapterClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 4

    .line 186
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 4

    .line 146
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .registers 5

    .line 284
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    if-eqz v1, :cond_35

    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->parent:Lorg/apache/tools/ant/AntTypeDefinition;

    .line 286
    invoke-virtual {v1, v0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->element:Lorg/apache/tools/ant/UnknownElement;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->element:Lorg/apache/tools/ant/UnknownElement;

    .line 287
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    .line 284
    :goto_34
    return v0

    .line 287
    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method
