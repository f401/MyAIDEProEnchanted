.class public Lorg/apache/tools/ant/types/optional/ScriptCondition;
.super Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;
.source "ScriptCondition.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/optional/ScriptCondition;->value:Z

    return-void
.end method


# virtual methods
.method public eval()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptCondition;->initScriptRunner()V

    .line 47
    const-string v0, "ant_condition"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/optional/ScriptCondition;->executeScript(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptCondition;->getValue()Z

    move-result v0

    return v0
.end method

.method public getValue()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/optional/ScriptCondition;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/optional/ScriptCondition;->value:Z

    .line 68
    return-void
.end method
