.class public Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;
.super Ljava/lang/Object;
.source "CvsUser.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayname()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayname(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->displayName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->userID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public validate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->userID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 80
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Displayname attribute must be set for userID %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->userID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Username attribute must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
