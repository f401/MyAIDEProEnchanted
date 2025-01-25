.class public Lorg/apache/tools/ant/taskdefs/Local;
.super Lorg/apache/tools/ant/Task;
.source "Local.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .line 42
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Local;->name:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 45
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Local;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Local;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/property/LocalProperties;->addLocal(Ljava/lang/String;)V

    .line 46
    return-void

    .line 43
    :cond_12
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing attribute name"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Local;->name:Ljava/lang/String;

    .line 36
    return-void
.end method
