.class public Lorg/apache/tools/ant/taskdefs/ResourceCount;
.super Lorg/apache/tools/ant/Task;
.source "ResourceCount.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final COUNT_REQUIRED:Ljava/lang/String; = "Use of the ResourceCount condition requires that the count attribute be set."

.field private static final ONE_NESTED_MESSAGE:Ljava/lang/String; = "ResourceCount can count resources from exactly one nested ResourceCollection."


# instance fields
.field private count:Ljava/lang/Integer;

.field private property:Ljava/lang/String;

.field private rc:Lorg/apache/tools/ant/types/ResourceCollection;

.field private when:Lorg/apache/tools/ant/types/Comparison;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 41
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 51
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    if-nez v0, :cond_7

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 55
    return-void

    .line 52
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ResourceCount can count resources from exactly one nested ResourceCollection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eval()Z
    .registers 4

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v0, :cond_25

    .line 95
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    .line 98
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->when:Lorg/apache/tools/ant/types/Comparison;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Comparison;->evaluate(I)Z

    move-result v0

    return v0

    .line 96
    :cond_1d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Use of the ResourceCount condition requires that the count attribute be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_25
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ResourceCount can count resources from exactly one nested ResourceCollection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 4

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v0, :cond_37

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->property:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ResourceCount;->log(Ljava/lang/String;)V

    .line 83
    :goto_22
    return-void

    .line 81
    :cond_23
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ResourceCount;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v2}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 76
    :cond_37
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ResourceCount can count resources from exactly one nested ResourceCollection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCount(I)V
    .registers 3

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->count:Ljava/lang/Integer;

    .line 107
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->property:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 7

    .line 62
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject()Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v1, :cond_e

    .line 67
    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ResourceCount;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 68
    return-void

    .line 64
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s doesn\'t denote a ResourceCollection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setWhen(Lorg/apache/tools/ant/types/Comparison;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ResourceCount;->when:Lorg/apache/tools/ant/types/Comparison;

    .line 116
    return-void
.end method
