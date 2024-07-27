.class Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;
.super Ljava/lang/Thread;
.source "ProcessDestroyer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessDestroyerImpl"
.end annotation


# instance fields
.field private shouldDestroy:Z

.field final this$0:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->this$0:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 51
    const-string v0, "ProcessDestroyer Shutdown Hook"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 55
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->this$0:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->run()V

    .line 58
    :cond_0
    return-void
.end method

.method public setShouldDestroy(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    .line 62
    return-void
.end method
