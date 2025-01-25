.class public Lorg/apache/tools/ant/taskdefs/condition/Socket;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Socket.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private port:I

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

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

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 65
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    if-eqz v0, :cond_3a

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking for listener at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/Socket;->log(Ljava/lang/String;I)V

    .line 70
    :try_start_29
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_35} :catch_37

    const/4 v0, 0x1

    .line 73
    :goto_36
    return v0

    .line 72
    :catch_37
    move-exception v0

    .line 73
    const/4 v0, 0x0

    goto :goto_36

    .line 66
    :cond_3a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No port specified in socket condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_42
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No server specified in socket condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPort(I)V
    .registers 2

    .line 53
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->port:I

    .line 54
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Socket;->server:Ljava/lang/String;

    .line 45
    return-void
.end method
