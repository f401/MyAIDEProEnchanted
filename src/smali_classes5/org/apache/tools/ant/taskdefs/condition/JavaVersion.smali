.class public Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;
.super Ljava/lang/Object;
.source "JavaVersion.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private atLeast:Ljava/lang/String;

.field private atMost:Ljava/lang/String;

.field private exactly:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    return-void
.end method

.method private validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 59
    :cond_c
    if-nez v0, :cond_16

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    if-nez v1, :cond_16

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 62
    :cond_16
    if-eqz v0, :cond_48

    .line 65
    :try_start_18
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1d} :catch_2e

    .line 87
    :goto_1d
    return-void

    .line 57
    :cond_1e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of atleast or atmost or exactly may be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_26
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One of atleast or atmost or exactly must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catch_2e
    move-exception v0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'atleast\' attribute is not a Dewey Decimal eg 1.1.0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 73
    :try_start_4c
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_51} :catch_52

    goto :goto_1d

    .line 74
    :catch_52
    move-exception v0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'atmost\' attribute is not a Dewey Decimal eg 1.1.0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_6c
    :try_start_6c
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_73} :catch_74

    goto :goto_1d

    .line 83
    :catch_74
    move-exception v0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'exactly\' attribute is not a Dewey Decimal eg 1.1.0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public eval()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->validate()V

    .line 41
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getParsedJavaVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 43
    new-instance v2, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    .line 52
    :goto_14
    return v0

    .line 45
    :cond_15
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 46
    new-instance v2, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;->isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    goto :goto_14

    .line 48
    :cond_23
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 49
    new-instance v2, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;->isLessThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    goto :goto_14

    .line 52
    :cond_31
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getAtLeast()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    return-object v0
.end method

.method public getAtMost()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    return-object v0
.end method

.method public getExactly()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    return-object v0
.end method

.method public setAtLeast(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setAtMost(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setExactly(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    .line 145
    return-void
.end method
