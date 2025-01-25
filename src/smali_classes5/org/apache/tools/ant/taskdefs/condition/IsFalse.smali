.class public Lorg/apache/tools/ant/taskdefs/condition/IsFalse;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsFalse.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFalse;->value:Ljava/lang/Boolean;

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

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFalse;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 49
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nothing to test for falsehood"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Z)V
    .registers 3

    .line 40
    if-eqz p1, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFalse;->value:Ljava/lang/Boolean;

    .line 41
    return-void

    .line 40
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method
