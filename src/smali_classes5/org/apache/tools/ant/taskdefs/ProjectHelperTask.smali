.class public Lorg/apache/tools/ant/taskdefs/ProjectHelperTask;
.super Lorg/apache/tools/ant/Task;
.source "ProjectHelperTask.java"


# instance fields
.field private projectHelpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/ProjectHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProjectHelperTask;->projectHelpers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/ProjectHelper;)V
    .registers 3

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProjectHelperTask;->projectHelpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProjectHelperTask;->projectHelpers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/ProjectHelperTask$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ProjectHelperTask$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 44
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/ProjectHelperTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/ProjectHelperTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/ProjectHelperRepository;)V

    .line 43
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    return-void
.end method
