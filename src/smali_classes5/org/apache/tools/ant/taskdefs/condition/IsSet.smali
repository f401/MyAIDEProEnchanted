.class public Lorg/apache/tools/ant/taskdefs/condition/IsSet;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsSet.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSet;->property:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 50
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSet;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 47
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No property specified for isset condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSet;->property:Ljava/lang/String;

    .line 38
    return-void
.end method
