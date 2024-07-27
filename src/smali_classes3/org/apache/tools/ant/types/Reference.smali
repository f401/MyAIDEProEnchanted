.class public Lorg/apache/tools/ant/types/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# instance fields
.field private project:Lorg/apache/tools/ant/Project;

.field private refid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Reference;->setRefId(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/Reference;->setRefId(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Reference;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/Reference;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getRefId()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/types/Reference;->refid:Ljava/lang/String;

    return-object v0
.end method

.method public getReferencedObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/Reference;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No project set on reference to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Reference;->refid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/tools/ant/Project;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/types/Reference;->refid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lorg/apache/tools/ant/types/Reference;->project:Lorg/apache/tools/ant/Project;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Reference;->refid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No reference specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/types/Reference;->project:Lorg/apache/tools/ant/Project;

    .line 91
    return-void
.end method

.method public setRefId(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lorg/apache/tools/ant/types/Reference;->refid:Ljava/lang/String;

    .line 73
    return-void
.end method
