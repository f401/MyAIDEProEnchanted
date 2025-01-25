.class public Lorg/apache/tools/ant/taskdefs/condition/ResourceExists;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "ResourceExists.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private resource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/Resource;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceExists;->resource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_7

    .line 42
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceExists;->resource:Lorg/apache/tools/ant/types/Resource;

    .line 43
    return-void

    .line 40
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only one resource can be tested"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eval()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceExists;->validate()V

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceExists;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    return v0
.end method

.method protected validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceExists;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_5

    .line 52
    return-void

    .line 50
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "resource is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
