.class public Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;
.super Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;
.source "CCMCreateTask.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "/synopsis"

.field public static final FLAG_PLATFORM:Ljava/lang/String; = "/plat"

.field public static final FLAG_RELEASE:Ljava/lang/String; = "/release"

.field public static final FLAG_RESOLVER:Ljava/lang/String; = "/resolver"

.field public static final FLAG_SUBSYSTEM:Ljava/lang/String; = "/subsystem"

.field public static final FLAG_TASK:Ljava/lang/String; = "/task"


# instance fields
.field private comment:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private resolver:Ljava/lang/String;

.field private subSystem:Ljava/lang/String;

.field private task:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;-><init>()V

    .line 71
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->comment:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->platform:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->resolver:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->release:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->subSystem:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->task:Ljava/lang/String;

    .line 83
    const-string v0, "create_task"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->setCcmAction(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 5

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 130
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/synopsis"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 134
    :cond_30
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 135
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/plat"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 139
    :cond_4a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getResolver()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 140
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/resolver"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getResolver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 144
    :cond_64
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 145
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/subsystem"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 149
    :cond_94
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 150
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/release"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 153
    :cond_ae
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getCcmCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getCcmAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 106
    invoke-virtual {p0, v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->run(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 112
    new-instance v1, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getCcmCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "default_task"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getTask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->log(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v0

    if-nez v0, :cond_53

    .line 123
    return-void

    .line 120
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 107
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getResolver()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->resolver:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSystem()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->subSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->task:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->comment:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->platform:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setProcessErrorStream(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_25

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->log(Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_29

    .line 296
    :cond_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 297
    return-void

    .line 291
    :catchall_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    :goto_2d
    throw v0

    :catchall_2e
    move-exception v1

    goto :goto_2d
.end method

.method public setProcessInputStream(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    return-void
.end method

.method public setProcessOutputStream(Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 306
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_68
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_7b

    .line 308
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_5f

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->log(Ljava/lang/String;I)V

    .line 311
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 312
    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->setTask(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->getTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->log(Ljava/lang/String;I)V
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_63

    .line 316
    :cond_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_62} :catch_68
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_7b

    .line 323
    return-void

    .line 306
    :catchall_63
    move-exception v0

    :try_start_64
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_9e

    :goto_67
    :try_start_67
    throw v0
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_67 .. :try_end_68} :catch_68
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_68} :catch_7b

    .line 316
    :catch_68
    move-exception v0

    .line 317
    const-string v1, "error procession stream, null pointer exception"

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->log(Ljava/lang/String;I)V

    .line 318
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->log(Ljava/lang/String;I)V

    .line 319
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 320
    :catch_7b
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error procession stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->log(Ljava/lang/String;I)V

    .line 322
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :catchall_9e
    move-exception v1

    goto :goto_67
.end method

.method public setRelease(Ljava/lang/String;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->release:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setResolver(Ljava/lang/String;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->resolver:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setSubSystem(Ljava/lang/String;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->subSystem:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setTask(Ljava/lang/String;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCreateTask;->task:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public start()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    return-void
.end method

.method public stop()V
    .registers 1

    .line 273
    return-void
.end method
