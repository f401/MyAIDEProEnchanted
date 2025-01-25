.class public Lorg/apache/tools/ant/taskdefs/Echo;
.super Lorg/apache/tools/ant/Task;
.source "Echo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Echo$EchoLevel;
    }
.end annotation


# instance fields
.field protected append:Z

.field private encoding:Ljava/lang/String;

.field protected file:Ljava/io/File;

.field private force:Z

.field protected logLevel:I

.field protected message:Ljava/lang/String;

.field private output:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->file:Ljava/io/File;

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->append:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->force:Z

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->logLevel:I

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public execute()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v8, 0x0

    .line 64
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/types/resources/StringResource;

    .line 65
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    :goto_f
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->output:Lorg/apache/tools/ant/types/Resource;

    if-nez v1, :cond_1d

    new-instance v1, Lorg/apache/tools/ant/types/resources/LogOutputResource;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Echo;->logLevel:I

    invoke-direct {v1, p0, v2}, Lorg/apache/tools/ant/types/resources/LogOutputResource;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    :cond_1d
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Echo;->append:Z

    .line 68
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    :goto_27
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Echo;->force:Z

    .line 64
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v10}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V

    .line 71
    return-void

    .line 65
    :cond_36
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    goto :goto_f

    .line 68
    :cond_39
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3b} :catch_3c

    goto :goto_27

    .line 69
    :catch_3c
    move-exception v0

    .line 70
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setAppend(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->append:Z

    .line 113
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 4

    .line 89
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Echo;->setOutput(Lorg/apache/tools/ant/types/Resource;)V

    .line 90
    return-void
.end method

.method public setForce(Z)V
    .registers 2

    .line 159
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->force:Z

    .line 160
    return-void
.end method

.method public setLevel(Lorg/apache/tools/ant/taskdefs/Echo$EchoLevel;)V
    .registers 3

    .line 137
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Echo$EchoLevel;->getLevel()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->logLevel:I

    .line 138
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 80
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setOutput(Lorg/apache/tools/ant/types/Resource;)V
    .registers 4

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->output:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_19

    .line 101
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->output:Lorg/apache/tools/ant/types/Resource;

    .line 102
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 103
    if-eqz v0, :cond_17

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->file:Ljava/io/File;

    .line 104
    return-void

    .line 103
    :cond_17
    const/4 v0, 0x0

    goto :goto_14

    .line 99
    :cond_19
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot set > 1 output target"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
