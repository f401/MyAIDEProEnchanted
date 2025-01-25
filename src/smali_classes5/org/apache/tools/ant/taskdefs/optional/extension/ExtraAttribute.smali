.class public Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;
.super Ljava/lang/Object;
.source "ExtraAttribute.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->name:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 82
    return-void

    .line 79
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing value from parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_27
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing name from parameter."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
