.class public Lorg/apache/tools/ant/taskdefs/ExecuteJava;
.super Ljava/lang/Object;
.source "ExecuteJava.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/tools/ant/util/TimeoutObserver;


# instance fields
.field private volatile caught:Ljava/lang/Throwable;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private done:Z

.field private javaCommand:Lorg/apache/tools/ant/types/Commandline;

.field private main:Ljava/lang/reflect/Method;

.field private perm:Lorg/apache/tools/ant/types/Permissions;

.field private sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

.field private thread:Ljava/lang/Thread;

.field private volatile timedOut:Z

.field private timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 50
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 52
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;

    .line 55
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 56
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public static setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 316
    :try_start_5
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 319
    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->createVmsJavaOptionFile([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_19} :catch_31

    .line 326
    aget-object v1, p1, v4

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 327
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "-V"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_30} :catch_31

    .line 330
    return-void

    .line 328
    :catch_31
    move-exception v0

    .line 329
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Failed to create a temporary file for \"-V\" switch"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Lorg/apache/tools/ant/Project;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v2

    .line 123
    :try_start_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz v0, :cond_e

    .line 124
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->setSystem()V
    :try_end_e
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_7 .. :try_end_e} :catch_117
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_e} :catch_11a
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_e} :catch_11d
    .catchall {:try_start_7 .. :try_end_e} :catchall_fd

    .line 128
    :cond_e
    :try_start_e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_4b

    .line 129
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_15} :catch_108
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_e .. :try_end_15} :catch_117
    .catch Ljava/lang/ThreadDeath; {:try_start_e .. :try_end_15} :catch_11a
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_15} :catch_11d
    .catchall {:try_start_e .. :try_end_15} :catchall_fd

    move-result-object v0

    .line 144
    :goto_16
    :try_start_16
    const-string v3, "main"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    .line 146
    if-eqz v0, :cond_ef

    .line 150
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_dd

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    if-nez v0, :cond_6d

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->run()V

    .line 188
    :goto_37
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_39
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_16 .. :try_end_39} :catch_b8
    .catch Ljava/lang/ThreadDeath; {:try_start_16 .. :try_end_39} :catch_d9
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_39} :catch_eb
    .catchall {:try_start_16 .. :try_end_39} :catchall_fd

    if-nez v0, :cond_d6

    .line 196
    if-eqz v1, :cond_43

    .line 197
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 198
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 199
    :cond_43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz v0, :cond_4a

    .line 202
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 205
    :cond_4a
    return-void

    .line 131
    :cond_4b
    :try_start_4b
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4b .. :try_end_4e} :catch_108
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_4b .. :try_end_4e} :catch_117
    .catch Ljava/lang/ThreadDeath; {:try_start_4b .. :try_end_4e} :catch_11a
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_4e} :catch_11d
    .catchall {:try_start_4b .. :try_end_4e} :catchall_fd

    move-result-object v1

    .line 132
    :try_start_4f
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 134
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->setIsolated(Z)V

    .line 136
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->setThreadContextLoader()V

    .line 137
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->forceLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 138
    const/4 v0, 0x1

    invoke-static {v2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4f .. :try_end_6b} :catch_108
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_4f .. :try_end_6b} :catch_b8
    .catch Ljava/lang/ThreadDeath; {:try_start_4f .. :try_end_6b} :catch_d9
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_6b} :catch_eb
    .catchall {:try_start_4f .. :try_end_6b} :catchall_fd

    move-result-object v0

    goto :goto_16

    .line 157
    :cond_6d
    :try_start_6d
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "ExecuteJava"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    invoke-virtual {p1, v2, v0}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 167
    new-instance v0, Lorg/apache/tools/ant/util/Watchdog;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/util/Watchdog;-><init>(J)V

    .line 168
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/Watchdog;->addTimeoutObserver(Lorg/apache/tools/ant/util/TimeoutObserver;)V

    .line 169
    monitor-enter p0
    :try_end_98
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_6d .. :try_end_98} :catch_b8
    .catch Ljava/lang/ThreadDeath; {:try_start_6d .. :try_end_98} :catch_d9
    .catch Ljava/lang/SecurityException; {:try_start_6d .. :try_end_98} :catch_eb
    .catchall {:try_start_6d .. :try_end_98} :catchall_fd

    .line 170
    :try_start_98
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 171
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->start()V
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_b5

    .line 173
    :goto_a0
    :try_start_a0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    if-nez v2, :cond_a9

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_a7} :catch_a8
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_b5

    goto :goto_a0

    .line 176
    :catch_a8
    move-exception v2

    .line 179
    :cond_a9
    :try_start_a9
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    if-eqz v2, :cond_cf

    .line 180
    const-string v0, "Timeout: sub-process interrupted"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 186
    :goto_b3
    monitor-exit p0

    goto :goto_37

    :catchall_b5
    move-exception v0

    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw v0
    :try_end_b8
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_b7 .. :try_end_b8} :catch_b8
    .catch Ljava/lang/ThreadDeath; {:try_start_b7 .. :try_end_b8} :catch_d9
    .catch Ljava/lang/SecurityException; {:try_start_b7 .. :try_end_b8} :catch_eb
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_fd

    .line 191
    :catch_b8
    move-exception v2

    move-object v0, v1

    :goto_ba
    move-object v1, v2

    .line 192
    :goto_bb
    :try_start_bb
    throw v1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bc

    .line 196
    :catchall_bc
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_bf
    if-eqz v3, :cond_c7

    .line 197
    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 198
    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 199
    :cond_c7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz v0, :cond_ce

    .line 202
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 204
    :cond_ce
    throw v2

    .line 183
    :cond_cf
    const/4 v2, 0x0

    :try_start_d0
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 184
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->stop()V
    :try_end_d5
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_b5

    goto :goto_b3

    .line 189
    :cond_d6
    :try_start_d6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;

    throw v0

    .line 191
    :catch_d9
    move-exception v2

    move-object v0, v1

    :goto_db
    move-object v1, v2

    goto :goto_bb

    .line 151
    :cond_dd
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v3, "main() method in %s is not declared static"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v0, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 191
    :catch_eb
    move-exception v2

    move-object v0, v1

    :goto_ed
    move-object v1, v2

    goto :goto_bb

    .line 147
    :cond_ef
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Could not find main() method in %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v0, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_fd
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_d6 .. :try_end_fd} :catch_b8
    .catch Ljava/lang/ThreadDeath; {:try_start_d6 .. :try_end_fd} :catch_d9
    .catch Ljava/lang/SecurityException; {:try_start_d6 .. :try_end_fd} :catch_eb
    .catchall {:try_start_d6 .. :try_end_fd} :catchall_fd

    .line 193
    :catchall_fd
    move-exception v0

    .line 194
    :try_start_fe
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_104
    .catchall {:try_start_fe .. :try_end_104} :catchall_104

    .line 196
    :catchall_104
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_bf

    .line 140
    :catch_108
    move-exception v0

    .line 141
    :try_start_109
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Could not find %s. Make sure you have it in your classpath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v0, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_117
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_109 .. :try_end_117} :catch_b8
    .catch Ljava/lang/ThreadDeath; {:try_start_109 .. :try_end_117} :catch_d9
    .catch Ljava/lang/SecurityException; {:try_start_109 .. :try_end_117} :catch_eb
    .catchall {:try_start_109 .. :try_end_117} :catchall_fd

    .line 191
    :catch_117
    move-exception v2

    move-object v0, v1

    goto :goto_ba

    :catch_11a
    move-exception v2

    move-object v0, v1

    goto :goto_db

    :catch_11d
    move-exception v2

    move-object v0, v1

    goto :goto_ed
.end method

.method public fork(Lorg/apache/tools/ant/ProjectComponent;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 271
    new-instance v1, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 274
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 276
    :cond_24
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_35

    .line 277
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 279
    :cond_35
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz v0, :cond_3c

    .line 280
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->addSysproperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V

    .line 282
    :cond_3c
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v2, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 283
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v3

    .line 285
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    if-nez v4, :cond_73

    .line 286
    const/4 v0, 0x0

    .line 287
    :goto_4a
    new-instance v4, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {v4, v3, v0}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 288
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 289
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 290
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 295
    :goto_65
    :try_start_65
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    .line 296
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_85
    .catchall {:try_start_65 .. :try_end_6c} :catchall_8c

    .line 297
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    return v0

    .line 287
    :cond_73
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    goto :goto_4a

    .line 292
    :cond_7d
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    goto :goto_65

    .line 298
    :catch_85
    move-exception v0

    .line 299
    :try_start_86
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8c

    .line 301
    :catchall_8c
    move-exception v0

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 302
    throw v0
.end method

.method public killedProcess()Z
    .registers 2

    monitor-enter p0

    .line 258
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 6

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    .line 215
    :try_start_6
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v1, :cond_d

    .line 216
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Permissions;->setSecurityManager()V

    .line 218
    :cond_d
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_19} :catch_42
    .catchall {:try_start_6 .. :try_end_19} :catchall_2c

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_20

    .line 228
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 230
    :cond_20
    monitor-enter p0

    .line 231
    const/4 v0, 0x1

    :try_start_22
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 233
    monitor-exit p0

    .line 235
    :goto_28
    return-void

    .line 233
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    .line 224
    :catchall_2c
    move-exception v0

    .line 225
    :try_start_2d
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_60

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_36

    .line 228
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 230
    :cond_36
    monitor-enter p0

    .line 231
    const/4 v0, 0x1

    :try_start_38
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 233
    monitor-exit p0

    goto :goto_28

    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_3f

    throw v0

    .line 219
    :catch_42
    move-exception v0

    .line 220
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 221
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_4d

    .line 222
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_60

    .line 227
    :cond_4d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_54

    .line 228
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 230
    :cond_54
    monitor-enter p0

    .line 231
    const/4 v0, 0x1

    :try_start_56
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 233
    monitor-exit p0

    goto :goto_28

    :catchall_5d
    move-exception v0

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_5d

    throw v0

    .line 227
    :catchall_60
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v1, :cond_68

    .line 228
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 230
    :cond_68
    monitor-enter p0

    .line 231
    const/4 v1, 0x1

    :try_start_6a
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 233
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_71

    .line 234
    throw v0

    .line 233
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 74
    return-void
.end method

.method public setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 65
    return-void
.end method

.method public setOutput(Ljava/io/PrintStream;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    return-void
.end method

.method public setPermissions(Lorg/apache/tools/ant/types/Permissions;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 91
    return-void
.end method

.method public setSystemProperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 82
    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 111
    return-void
.end method

.method public timeoutOccured(Lorg/apache/tools/ant/util/Watchdog;)V
    .registers 3

    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 248
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 250
    monitor-exit p0

    return-void

    .line 243
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
