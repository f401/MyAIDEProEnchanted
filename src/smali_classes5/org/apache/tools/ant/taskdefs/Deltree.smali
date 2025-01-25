.class public Lorg/apache/tools/ant/taskdefs/Deltree;
.super Lorg/apache/tools/ant/Task;
.source "Deltree.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private removeDir(Ljava/io/File;)V
    .registers 7

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_3c

    aget-object v3, v1, v0

    .line 88
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 90
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Deltree;->removeDir(Ljava/io/File;)V

    .line 87
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 91
    :cond_1b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_18

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_3c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 100
    return-void

    .line 97
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 55
    const-string v0, "DEPRECATED - The deltree task is deprecated.  Use delete instead."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Deltree;->log(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Deltree;->dir:Ljava/io/File;

    if-eqz v0, :cond_61

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Deltree;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_41

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Deltree;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 76
    :cond_1f
    :goto_1f
    return-void

    .line 65
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Deltree;->dir:Ljava/io/File;

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Deltree;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 72
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Deltree;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Deltree;->log(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Deltree;->dir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Deltree;->removeDir(Ljava/io/File;)V

    goto :goto_1f

    .line 59
    :cond_61
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dir attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Deltree;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Deltree;->dir:Ljava/io/File;

    .line 46
    return-void
.end method
