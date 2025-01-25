.class public Lorg/apache/tools/ant/taskdefs/condition/Equals;
.super Ljava/lang/Object;
.source "Equals.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final REQUIRED:I = 0x3


# instance fields
.field private arg1:Ljava/lang/Object;

.field private arg2:Ljava/lang/Object;

.field private args:I

.field private caseSensitive:Z

.field private forcestring:Z

.field private trim:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->caseSensitive:Z

    .line 35
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->forcestring:Z

    return-void
.end method

.method private setArg1Internal(Ljava/lang/Object;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    .line 61
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    .line 62
    return-void
.end method

.method private setArg2Internal(Ljava/lang/Object;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    .line 88
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    .line 89
    return-void
.end method


# virtual methods
.method public eval()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7d

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    if-eq v0, v1, :cond_15

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 129
    :cond_15
    const/4 v0, 0x1

    .line 146
    :goto_16
    return v0

    .line 131
    :cond_17
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->forcestring:Z

    if-eqz v0, :cond_2f

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    if-eqz v0, :cond_23

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6c

    :cond_23
    :goto_23
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    if-eqz v0, :cond_2d

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_71

    :cond_2d
    :goto_2d
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    .line 135
    :cond_2f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    if-eqz v1, :cond_41

    .line 136
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    .line 138
    :cond_41
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    if-eqz v1, :cond_53

    .line 139
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    .line 141
    :cond_53
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7b

    .line 142
    check-cast v0, Ljava/lang/String;

    .line 143
    check-cast v1, Ljava/lang/String;

    .line 144
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->caseSensitive:Z

    if-eqz v2, :cond_76

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16

    .line 132
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 133
    :cond_71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 144
    :cond_76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    .line 146
    :cond_7b
    const/4 v0, 0x0

    goto :goto_16

    .line 126
    :cond_7d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both arg1 and arg2 are required in equals"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg1(Ljava/lang/Object;)V
    .registers 3

    .line 43
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg1(Ljava/lang/String;)V

    .line 48
    :goto_9
    return-void

    .line 46
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg1Internal(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public setArg1(Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg1Internal(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public setArg2(Ljava/lang/Object;)V
    .registers 3

    .line 70
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg2(Ljava/lang/String;)V

    .line 75
    :goto_9
    return-void

    .line 73
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg2Internal(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public setArg2(Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg2Internal(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public setCasesensitive(Z)V
    .registers 2

    .line 107
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->caseSensitive:Z

    .line 108
    return-void
.end method

.method public setForcestring(Z)V
    .registers 2

    .line 117
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->forcestring:Z

    .line 118
    return-void
.end method

.method public setTrim(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    .line 98
    return-void
.end method
