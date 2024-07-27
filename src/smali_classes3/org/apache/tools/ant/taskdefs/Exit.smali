.class public Lorg/apache/tools/ant/taskdefs/Exit;
.super Lorg/apache/tools/ant/Task;
.source "Exit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;
    }
.end annotation


# instance fields
.field private ifCondition:Ljava/lang/Object;

.field private message:Ljava/lang/String;

.field private nestedCondition:Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;

.field private status:Ljava/lang/Integer;

.field private unlessCondition:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/Object;)Z
    .registers 3

    .line 168
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nestedConditionPresent()Z
    .registers 2

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->nestedCondition:Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private testIfCondition()Z
    .registers 3

    .line 200
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->ifCondition:Ljava/lang/Object;

    .line 201
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testIfCondition(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    return v0
.end method

.method private testNestedCondition()Z
    .registers 3

    .line 219
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->nestedConditionPresent()Z

    move-result v0

    .line 221
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->ifCondition:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->unlessCondition:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 226
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->nestedCondition:Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;->eval()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nested conditions not permitted in conjunction with if/unless attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private testUnlessCondition()Z
    .registers 3

    .line 210
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->unlessCondition:Ljava/lang/Object;

    .line 211
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testUnlessCondition(Ljava/lang/Object;)Z

    move-result v0

    .line 210
    return v0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 176
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->message:Ljava/lang/String;

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->message:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public createCondition()Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
    .registers 3

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->nestedCondition:Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;-><init>(Lorg/apache/tools/ant/taskdefs/Exit$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->nestedCondition:Lorg/apache/tools/ant/taskdefs/Exit$NestedCondition;

    .line 192
    return-object v0

    .line 189
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested condition is allowed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->nestedConditionPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->testNestedCondition()Z

    move-result v0

    .line 139
    :goto_0
    if-eqz v0, :cond_9

    .line 140
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->message:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failing due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Exit;->log(Ljava/lang/String;I)V

    .line 162
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->status:Ljava/lang/Integer;

    if-nez v1, :cond_8

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 163
    :goto_2
    throw v0

    .line 138
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->testIfCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->testUnlessCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->ifCondition:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Exit;->isNullOrEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->testIfCondition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->ifCondition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->unlessCondition:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Exit;->isNullOrEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->testUnlessCondition()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    if-nez v0, :cond_6

    .line 149
    const-string v0, ""

    .line 153
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "unless="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->unlessCondition:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_5
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Exit;->nestedConditionPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    const-string v0, "condition satisfied"

    goto/16 :goto_1

    .line 151
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 157
    :cond_7
    if-nez v0, :cond_0

    .line 158
    const-string v0, "No message"

    goto/16 :goto_1

    .line 163
    :cond_8
    new-instance v1, Lorg/apache/tools/ant/ExitStatusException;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Exit;->status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto/16 :goto_2

    .line 165
    :cond_9
    return-void
.end method

.method public setIf(Ljava/lang/Object;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->ifCondition:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setIf(Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Exit;->setIf(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->message:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setStatus(I)V
    .registers 3

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exit;->status:Ljava/lang/Integer;

    .line 121
    return-void
.end method

.method public setUnless(Ljava/lang/Object;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exit;->unlessCondition:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public setUnless(Ljava/lang/String;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Exit;->setUnless(Ljava/lang/Object;)V

    .line 113
    return-void
.end method
