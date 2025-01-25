.class Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;
.super Ljava/lang/Object;
.source "ProcessDestroyer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;
    }
.end annotation


# static fields
.field private static final THREAD_DIE_TIMEOUT:I = 0x4e20


# instance fields
.field private addShutdownHookMethod:Ljava/lang/reflect/Method;

.field private added:Z

.field private destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

.field private final processes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end field

.field private removeShutdownHookMethod:Ljava/lang/reflect/Method;

.field private running:Z


# direct methods
.method constructor <init>()V
    .registers 6

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    .line 42
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    .line 45
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    .line 79
    :try_start_12
    const-class v0, Ljava/lang/Runtime;

    const-string v1, "addShutdownHook"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Thread;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHookMethod:Ljava/lang/reflect/Method;

    .line 82
    const-class v0, Ljava/lang/Runtime;

    const-string v1, "removeShutdownHook"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Thread;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHookMethod:Ljava/lang/reflect/Method;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_36} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_36} :catch_37

    .line 89
    :goto_36
    return-void

    .line 87
    :catch_37
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 85
    :catch_3c
    move-exception v0

    goto :goto_36
.end method

.method private addShutdownHook()V
    .registers 7

    const/4 v5, 0x1

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHookMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    if-nez v0, :cond_24

    .line 98
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;-><init>(Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    .line 100
    :try_start_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHookMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_24} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_24} :catch_25

    .line 114
    :cond_24
    :goto_24
    return-void

    .line 104
    :catch_25
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    if-ne v1, v2, :cond_37

    .line 108
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    goto :goto_24

    .line 110
    :cond_37
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_24

    .line 102
    :catch_3b
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_24
.end method

.method private removeShutdownHook()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHookMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    if-nez v0, :cond_51

    .line 123
    :try_start_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHookMethod:Ljava/lang/reflect/Method;

    .line 124
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 125
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Could not remove shutdown hook"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_2f} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_2f} :catch_52

    .line 137
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->setShouldDestroy(Z)V

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_45

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->start()V

    .line 149
    :cond_45
    :try_start_45
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->join(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4c} :catch_6d

    .line 154
    :goto_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    .line 155
    iput-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    .line 157
    :cond_51
    return-void

    .line 129
    :catch_52
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    if-ne v1, v2, :cond_64

    .line 133
    iput-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    goto :goto_2f

    .line 135
    :cond_64
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2f

    .line 127
    :catch_68
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2f

    .line 150
    :catch_6d
    move-exception v0

    goto :goto_4c
.end method


# virtual methods
.method public add(Ljava/lang/Process;)Z
    .registers 4

    .line 177
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    monitor-enter v1

    .line 179
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 180
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHook()V

    .line 182
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 183
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public isAddedAsShutdownHook()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    return v0
.end method

.method public remove(Ljava/lang/Process;)Z
    .registers 5

    .line 195
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    monitor-enter v1

    .line 196
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 197
    if-eqz v0, :cond_16

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 198
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHook()V

    .line 200
    :cond_16
    monitor-exit v1

    return v0

    .line 201
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public run()V
    .registers 4

    .line 209
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    monitor-enter v1

    .line 210
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$$ExternalSyntheticLambda0;

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 212
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v0
.end method
