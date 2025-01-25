.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;
.super Ljava/lang/Object;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field private expression:Ljava/lang/String;

.field private ifCond:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private type:Ljava/lang/String;

.field private unlessCond:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->name:Ljava/lang/String;

    .line 970
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->expression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpression()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->expression:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1043
    return-object v0

    .line 1041
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Expression attribute is missing."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1029
    return-object v0

    .line 1027
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Name attribute is missing."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1052
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .registers 2

    .line 1007
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->expression:Ljava/lang/String;

    .line 1008
    return-void
.end method

.method public setIf(Ljava/lang/Object;)V
    .registers 2

    .line 1063
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->ifCond:Ljava/lang/Object;

    .line 1064
    return-void
.end method

.method public setIf(Ljava/lang/String;)V
    .registers 2

    .line 1073
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->setIf(Ljava/lang/Object;)V

    .line 1074
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 997
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->name:Ljava/lang/String;

    .line 998
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 988
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->project:Lorg/apache/tools/ant/Project;

    .line 989
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 1016
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->type:Ljava/lang/String;

    .line 1017
    return-void
.end method

.method public setUnless(Ljava/lang/Object;)V
    .registers 2

    .line 1084
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->unlessCond:Ljava/lang/Object;

    .line 1085
    return-void
.end method

.method public setUnless(Ljava/lang/String;)V
    .registers 2

    .line 1094
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->setUnless(Ljava/lang/Object;)V

    .line 1095
    return-void
.end method

.method public shouldUse()Z
    .registers 3

    .line 1103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->project:Lorg/apache/tools/ant/Project;

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->ifCond:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testIfCondition(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->unlessCond:Ljava/lang/Object;

    .line 1105
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testUnlessCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 1104
    :goto_17
    return v0

    .line 1105
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
