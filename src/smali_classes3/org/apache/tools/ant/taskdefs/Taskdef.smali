.class public Lorg/apache/tools/ant/taskdefs/Taskdef;
.super Lorg/apache/tools/ant/taskdefs/Typedef;
.source "Taskdef.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Typedef;-><init>()V

    .line 47
    const-class v0, Lorg/apache/tools/ant/TaskAdapter;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Taskdef;->setAdapterClass(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Taskdef;->setAdaptToClass(Ljava/lang/Class;)V

    .line 49
    return-void
.end method
