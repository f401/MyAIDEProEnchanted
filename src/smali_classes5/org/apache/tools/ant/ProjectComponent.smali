.class public abstract Lorg/apache/tools/ant/ProjectComponent;
.super Ljava/lang/Object;
.source "ProjectComponent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected description:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected location:Lorg/apache/tools/ant/Location;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected project:Lorg/apache/tools/ant/Project;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->location:Lorg/apache/tools/ant/Location;

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectComponent;

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ProjectComponent;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 171
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lorg/apache/tools/ant/Location;
    .registers 2

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->location:Lorg/apache/tools/ant/Location;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectComponent;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    .line 137
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .registers 4

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 158
    :cond_d
    :goto_d
    return-void

    .line 154
    :cond_e
    const/4 v0, 0x2

    if-gt p2, v0, :cond_d

    .line 155
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/ProjectComponent;->description:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLocation(Lorg/apache/tools/ant/Location;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/ProjectComponent;->location:Lorg/apache/tools/ant/Location;

    .line 106
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/ProjectComponent;->project:Lorg/apache/tools/ant/Project;

    .line 71
    return-void
.end method
