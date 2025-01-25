.class public Lorg/apache/tools/ant/taskdefs/condition/Contains;
.super Ljava/lang/Object;
.source "Contains.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private caseSensitive:Z

.field private string:Ljava/lang/String;

.field private subString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->caseSensitive:Z

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

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->string:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->subString:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 73
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->caseSensitive:Z

    if-eqz v2, :cond_11

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 73
    :goto_10
    return v0

    .line 75
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->subString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_10

    .line 69
    :cond_20
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both string and substring are required in contains"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCasesensitive(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->caseSensitive:Z

    .line 59
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->string:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSubstring(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Contains;->subString:Ljava/lang/String;

    .line 50
    return-void
.end method
