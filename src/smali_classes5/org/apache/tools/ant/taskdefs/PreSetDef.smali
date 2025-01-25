.class public Lorg/apache/tools/ant/taskdefs/PreSetDef;
.super Lorg/apache/tools/ant/taskdefs/AntlibDefinition;
.source "PreSetDef.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private nestedTask:Lorg/apache/tools/ant/UnknownElement;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;-><init>()V

    return-void
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->nestedTask:Lorg/apache/tools/ant/UnknownElement;

    if-nez v0, :cond_15

    .line 64
    instance-of v0, p1, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v0, :cond_d

    .line 68
    check-cast p1, Lorg/apache/tools/ant/UnknownElement;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->nestedTask:Lorg/apache/tools/ant/UnknownElement;

    .line 69
    return-void

    .line 65
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "addTask called with a task that is not an unknown element"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_15
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested element allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 6

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->nestedTask:Lorg/apache/tools/ant/UnknownElement;

    if-eqz v0, :cond_6f

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->name:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PreSetDef;->getURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PreSetDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->nestedTask:Lorg/apache/tools/ant/UnknownElement;

    .line 89
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->nestedTask:Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_59

    .line 96
    new-instance v1, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->nestedTask:Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;-><init>(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/UnknownElement;)V

    .line 98
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->setName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defining preset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/PreSetDef;->log(Ljava/lang/String;I)V

    .line 102
    return-void

    .line 93
    :cond_59
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to find typedef %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 81
    :cond_67
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Name not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_6f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing nested element"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PreSetDef;->name:Ljava/lang/String;

    .line 53
    return-void
.end method
