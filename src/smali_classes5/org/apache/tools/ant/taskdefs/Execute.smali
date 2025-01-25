.class public Lorg/apache/tools/ant/taskdefs/Execute;
.super Ljava/lang/Object;
.source "Execute.java"


# static fields
.field public static final INVALID:I = 0x7fffffff

.field private static final ONE_SECOND:I = 0x3e8

.field private static antWorkingDirectory:Ljava/lang/String;

.field private static environmentCaseInSensitive:Z

.field private static procEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static processDestroyer:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;


# instance fields
.field private cmdl:[Ljava/lang/String;

.field private env:[Ljava/lang/String;

.field private exitValue:I

.field private newEnvironment:Z

.field private project:Lorg/apache/tools/ant/Project;

.field private streamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

.field private useVMLauncher:Z

.field private final watchdog:Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

.field private workingDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->antWorkingDirectory:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;

    .line 59
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->processDestroyer:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/tools/ant/taskdefs/Execute;->environmentCaseInSensitive:Z

    .line 65
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/tools/ant/taskdefs/Execute;->environmentCaseInSensitive:Z

    .line 68
    :cond_20
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 263
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V
    .registers 3

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->cmdl:[Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->env:[Ljava/lang/String;

    .line 72
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->exitValue:I

    .line 75
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    .line 76
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->project:Lorg/apache/tools/ant/Project;

    .line 77
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Execute;->newEnvironment:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->useVMLauncher:Z

    .line 286
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 287
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Execute;->watchdog:Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    .line 290
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 291
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Execute;->useVMLauncher:Z

    .line 293
    :cond_26
    return-void
.end method

.method public static closeStreams(Ljava/lang/Process;)V
    .registers 2

    .line 674
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 675
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 676
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 677
    return-void
.end method

.method public static getEnvironmentVariables()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_bc

    if-eqz v0, :cond_b

    .line 107
    const-class v1, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-exit v1

    .line 166
    :goto_a
    return-object v0

    .line 109
    :cond_b
    :try_start_b
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_bc

    move-result v0

    if-nez v0, :cond_21

    .line 111
    :try_start_13
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_1d
    .catchall {:try_start_13 .. :try_end_19} :catchall_bc

    .line 112
    const-class v1, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-exit v1

    goto :goto_a

    .line 113
    :catch_1d
    move-exception v0

    .line 114
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :cond_21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_bc

    .line 120
    :try_start_28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 122
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getProcEnvCommand()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setNewenvironment(Z)V

    .line 125
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    .line 126
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    .line 130
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 132
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 133
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->getVMSLogicals(Ljava/io/BufferedReader;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_61} :catch_96
    .catchall {:try_start_28 .. :try_end_61} :catchall_bc

    .line 134
    const-class v1, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-exit v1

    goto :goto_a

    .line 136
    :cond_65
    const/4 v0, 0x0

    .line 138
    :goto_66
    :try_start_66
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_cc

    .line 139
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 141
    if-eqz v0, :cond_90

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 143
    sget-object v4, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 144
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_95} :catch_96
    .catchall {:try_start_66 .. :try_end_95} :catchall_bc

    goto :goto_66

    .line 162
    :catch_96
    move-exception v0

    .line 163
    :try_start_97
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    :cond_9a
    :goto_9a
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_bc

    const-class v1, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-exit v1

    goto/16 :goto_a

    .line 150
    :cond_a1
    if-nez v0, :cond_c1

    .line 151
    :try_start_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_bb} :catch_96
    .catchall {:try_start_a3 .. :try_end_bb} :catchall_bc

    goto :goto_66

    .line 105
    :catchall_bc
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-exit v1

    throw v0

    .line 153
    :cond_c1
    :try_start_c1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 158
    :cond_cc
    if-eqz v0, :cond_9a

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 160
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Execute;->procEnvironment:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_e8} :catch_96
    .catchall {:try_start_c1 .. :try_end_e8} :catchall_bc

    goto :goto_9a
.end method

.method private static getProcEnvCommand()[Ljava/lang/String;
    .registers 5

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    const-string v0, "os/2"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 193
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "cmd"

    aput-object v1, v0, v3

    const-string v1, "/c"

    aput-object v1, v0, v2

    const-string v1, "set"

    aput-object v1, v0, v4

    .line 228
    :goto_1a
    return-object v0

    .line 195
    :cond_1b
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 197
    const-string v0, "win9x"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 199
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "command.com"

    aput-object v1, v0, v3

    const-string v1, "/c"

    aput-object v1, v0, v2

    const-string v1, "set"

    aput-object v1, v0, v4

    goto :goto_1a

    .line 202
    :cond_3a
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "cmd"

    aput-object v1, v0, v3

    const-string v1, "/c"

    aput-object v1, v0, v2

    const-string v1, "set"

    aput-object v1, v0, v4

    goto :goto_1a

    .line 204
    :cond_49
    const-string v0, "z/os"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 208
    :cond_59
    new-array v0, v2, [Ljava/lang/String;

    .line 209
    new-instance v1, Ljava/io/File;

    const-string v2, "/bin/env"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 210
    const-string v1, "/bin/env"

    aput-object v1, v0, v3

    goto :goto_1a

    .line 219
    :cond_6d
    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "os/400"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 221
    :cond_7d
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "env"

    aput-object v1, v0, v3

    goto :goto_1a

    .line 223
    :cond_84
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 224
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "show"

    aput-object v1, v0, v3

    const-string v1, "logical"

    aput-object v1, v0, v2

    goto :goto_1a

    .line 228
    :cond_97
    const/4 v0, 0x0

    goto :goto_1a

    .line 211
    :cond_99
    new-instance v1, Ljava/io/File;

    const-string v2, "/usr/bin/env"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 212
    const-string v1, "/usr/bin/env"

    aput-object v1, v0, v3

    goto/16 :goto_1a

    .line 215
    :cond_ac
    const-string v1, "env"

    aput-object v1, v0, v3

    goto/16 :goto_1a
.end method

.method public static getProcEnvironment()Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-enter v0

    .line 178
    :try_start_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 179
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironmentVariables()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Execute$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/Execute$$ExternalSyntheticLambda0;-><init>(Ljava/util/Vector;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 180
    const-class v1, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_18
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/Execute;

    monitor-exit v1

    throw v0
.end method

.method private static getVMSLogicals(Ljava/io/BufferedReader;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 692
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    move-object v2, v1

    .line 696
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 698
    const-string v5, "\t="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 700
    if-eqz v0, :cond_8

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 703
    :cond_38
    const-string v5, "  \""

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 705
    if-eqz v0, :cond_45

    .line 706
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_45
    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 709
    const/4 v0, 0x3

    add-int/lit8 v6, v5, -0x2

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    move-object v0, v1

    .line 712
    goto :goto_8

    .line 714
    :cond_5a
    add-int/lit8 v2, v5, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 721
    :cond_67
    if-eqz v0, :cond_6c

    .line 722
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_6c
    return-object v3
.end method

.method public static isFailure(I)Z
    .registers 3

    .line 574
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_e

    .line 575
    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_10

    .line 574
    :cond_d
    :goto_d
    return v0

    .line 575
    :cond_e
    if-nez p0, :cond_d

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic lambda$getProcEnvironment$0(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$patchEnvironment$1(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$patchEnvironment$2(I)[Ljava/lang/String;
    .registers 2

    .line 637
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method public static launch(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 421
    :cond_8
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->getVMLauncher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object v0

    .line 422
    if-eqz p4, :cond_23

    if-eqz v0, :cond_23

    .line 424
    :goto_10
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0

    .line 418
    :cond_15
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s doesn\'t exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 423
    :cond_23
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->getShellLauncher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object v0

    goto :goto_10
.end method

.method private patchEnvironment()[Ljava/lang/String;
    .registers 11

    const/4 v3, 0x0

    .line 608
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 609
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->env:[Ljava/lang/String;

    .line 636
    :goto_b
    return-object v0

    .line 611
    :cond_c
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironmentVariables()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 613
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Execute;->env:[Ljava/lang/String;

    array-length v6, v5

    move v2, v3

    :goto_19
    if-ge v2, v6, :cond_5c

    aget-object v7, v5, v2

    .line 614
    const/16 v0, 0x3d

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_73

    sget-boolean v0, Lorg/apache/tools/ant/taskdefs/Execute;->environmentCaseInSensitive:Z

    if-eqz v0, :cond_73

    .line 622
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_39
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 633
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 636
    :cond_5c
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Execute$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Execute$$ExternalSyntheticLambda1;

    .line 637
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Execute$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Execute$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_b

    :cond_73
    move-object v0, v1

    goto :goto_4b
.end method

.method public static varargs runCommand(Lorg/apache/tools/ant/Task;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 651
    :try_start_1
    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 653
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 655
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 656
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    .line 658
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 665
    return-void

    .line 659
    :cond_2a
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with return code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4b} :catch_4b

    .line 662
    :catch_4b
    move-exception v0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public static toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    .registers 2

    .line 242
    const-string v0, "z/os"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 244
    :try_start_8
    const-string v0, "Cp1047"

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_d} :catch_24

    move-result-object v0

    .line 255
    :goto_e
    return-object v0

    .line 248
    :cond_f
    const-string v0, "os/400"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 250
    :try_start_17
    const-string v0, "Cp500"

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_e

    .line 251
    :catch_1e
    move-exception v0

    .line 255
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 245
    :catch_24
    move-exception v0

    goto :goto_1f
.end method


# virtual methods
.method public execute()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 438
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Execute;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironment()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Execute;->useVMLauncher:Z

    .line 438
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;->launch(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    move-result-object v1

    .line 442
    :try_start_1c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->streamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->setProcessInputStream(Ljava/io/OutputStream;)V

    .line 443
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->streamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->setProcessOutputStream(Ljava/io/InputStream;)V

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->streamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->setProcessErrorStream(Ljava/io/InputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_87

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->streamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->start()V

    .line 454
    :try_start_3c
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Execute;->processDestroyer:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->add(Ljava/lang/Process;)Z

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->watchdog:Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    if-eqz v0, :cond_48

    .line 457
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->start(Ljava/lang/Process;)V

    .line 459
    :cond_48
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->waitFor(Ljava/lang/Process;)V

    .line 461
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->watchdog:Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    if-eqz v0, :cond_52

    .line 462
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->stop()V

    .line 464
    :cond_52
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->streamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->stop()V

    .line 465
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->closeStreams(Ljava/lang/Process;)V

    .line 467
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->watchdog:Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    if-eqz v0, :cond_61

    .line 468
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->checkException()V

    .line 470
    :cond_61
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Execute;->getExitValue()I
    :try_end_64
    .catch Ljava/lang/ThreadDeath; {:try_start_3c .. :try_end_64} :catch_7b
    .catchall {:try_start_3c .. :try_end_64} :catchall_80

    move-result v0

    .line 479
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Execute;->processDestroyer:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->remove(Ljava/lang/Process;)Z

    .line 470
    return v0

    .line 436
    :cond_6b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s doesn\'t exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 471
    :catch_7b
    move-exception v0

    .line 473
    :try_start_7c
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 474
    throw v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_80

    .line 479
    :catchall_80
    move-exception v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Execute;->processDestroyer:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->remove(Ljava/lang/Process;)Z

    .line 480
    throw v0

    .line 445
    :catch_87
    move-exception v0

    .line 446
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 447
    throw v0
.end method

.method public getCommandline()[Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->cmdl:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()[Ljava/lang/String;
    .registers 3

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->env:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->newEnvironment:Z

    if-eqz v1, :cond_9

    :cond_8
    :goto_8
    return-object v0

    .line 339
    :cond_9
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Execute;->patchEnvironment()[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getExitValue()I
    .registers 2

    .line 553
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->exitValue:I

    return v0
.end method

.method public getWorkingDirectory()Ljava/io/File;
    .registers 3

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    if-nez v0, :cond_b

    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Execute;->antWorkingDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    :cond_b
    return-object v0
.end method

.method public isFailure()Z
    .registers 2

    .line 586
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Execute;->getExitValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v0

    return v0
.end method

.method public killedProcess()Z
    .registers 2

    .line 596
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->watchdog:Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setAntRun(Lorg/apache/tools/ant/Project;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->project:Lorg/apache/tools/ant/Project;

    .line 386
    return-void
.end method

.method public setCommandline([Ljava/lang/String;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->cmdl:[Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setEnvironment([Ljava/lang/String;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->env:[Ljava/lang/String;

    .line 350
    return-void
.end method

.method protected setExitValue(I)V
    .registers 2

    .line 543
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->exitValue:I

    .line 544
    return-void
.end method

.method public setNewenvironment(Z)V
    .registers 2

    .line 329
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->newEnvironment:Z

    .line 330
    return-void
.end method

.method public setSpawn(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    return-void
.end method

.method public setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->streamHandler:Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    .line 303
    return-void
.end method

.method public setVMLauncher(Z)V
    .registers 2

    .line 399
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->useVMLauncher:Z

    .line 400
    return-void
.end method

.method public setWorkingDirectory(Ljava/io/File;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    .line 364
    return-void
.end method

.method public spawn()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    .line 492
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 495
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Execute;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironment()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Execute;->useVMLauncher:Z

    .line 495
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;->launch(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    move-result-object v0

    .line 498
    const-string v1, "windows"

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 500
    const-wide/16 v2, 0x3e8

    :try_start_27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_77

    .line 506
    :cond_2a
    :goto_2a
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute$1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Execute$1;-><init>(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 513
    new-instance v2, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->setProcessErrorStream(Ljava/io/InputStream;)V

    .line 515
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->setProcessOutputStream(Ljava/io/InputStream;)V

    .line 516
    invoke-interface {v2}, Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;->start()V

    .line 517
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 519
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->project:Lorg/apache/tools/ant/Project;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spawned process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 521
    return-void

    .line 493
    :cond_67
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s doesn\'t exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Execute;->workingDirectory:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 501
    :catch_77
    move-exception v1

    .line 502
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Execute;->project:Lorg/apache/tools/ant/Project;

    const-string v2, "interruption in the sleep after having spawned a process"

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_2a
.end method

.method protected waitFor(Ljava/lang/Process;)V
    .registers 3

    .line 530
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 531
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setExitValue(I)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 535
    :goto_a
    return-void

    .line 532
    :catch_b
    move-exception v0

    .line 533
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_a
.end method
