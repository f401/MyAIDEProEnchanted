.class public Lorg/apache/tools/ant/taskdefs/condition/IsReference;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsReference.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private ref:Lorg/apache/tools/ant/types/Reference;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->ref:Lorg/apache/tools/ant/types/Reference;

    if-eqz v0, :cond_54

    .line 66
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/Project;->hasReference(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 80
    :goto_14
    return v2

    .line 71
    :cond_15
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    if-nez v0, :cond_1b

    move v2, v1

    .line 72
    goto :goto_14

    .line 74
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 75
    if-nez v0, :cond_3d

    .line 76
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 80
    :cond_3d
    if-eqz v0, :cond_5c

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    move v0, v1

    :goto_52
    move v2, v0

    .line 80
    goto :goto_14

    .line 62
    :cond_54
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No reference specified for isreference condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    move v0, v2

    goto :goto_52
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->ref:Lorg/apache/tools/ant/types/Reference;

    .line 43
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    .line 52
    return-void
.end method
