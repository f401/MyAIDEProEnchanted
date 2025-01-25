.class public Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;
.super Ljava/lang/Object;
.source "CvsTagEntry.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private prevRevision:Ljava/lang/String;

.field private revision:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->filename:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousRevision()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 97
    const-string v1, " was removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 99
    const-string v1, "; previous revision was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_21
    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_26
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    if-nez v1, :cond_35

    .line 102
    const-string v1, " is new; current revision is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 105
    :cond_35
    const-string v1, " has changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method
