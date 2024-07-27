.class public Lorg/apache/tools/ant/taskdefs/AntlibDefinition;
.super Lorg/apache/tools/ant/Task;
.source "AntlibDefinition.java"


# instance fields
.field private antlibClassLoader:Ljava/lang/ClassLoader;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAntlibClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->antlibClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAntlibClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->antlibClassLoader:Ljava/lang/ClassLoader;

    .line 71
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 47
    const-string v0, "antlib:org.apache.tools.ant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string p1, ""

    .line 50
    :cond_0
    const-string v0, "ant:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->uri:Ljava/lang/String;

    .line 54
    return-void

    .line 51
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Attempt to use a reserved URI %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
