.class public Lorg/apache/tools/ant/taskdefs/Dirname;
.super Lorg/apache/tools/ant/Task;
.source "Dirname.java"


# instance fields
.field private file:Ljava/io/File;

.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->property:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->file:Ljava/io/File;

    if-eqz v0, :cond_18

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Dirname;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 77
    :cond_18
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "file attribute required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Dirname;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 74
    :cond_24
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "property attribute required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Dirname;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->file:Ljava/io/File;

    .line 57
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->property:Ljava/lang/String;

    .line 65
    return-void
.end method
