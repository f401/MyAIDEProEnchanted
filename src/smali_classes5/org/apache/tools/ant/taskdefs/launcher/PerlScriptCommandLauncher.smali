.class public Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.source "PerlScriptCommandLauncher.java"


# instance fields
.field private final myScript:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .registers 3

    .line 34
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    .line 35
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->myScript:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 57
    if-nez p1, :cond_12

    .line 58
    if-nez p4, :cond_a

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 87
    :goto_9
    return-object v0

    .line 61
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot locate antRun script: No project provided"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_12
    const-string v0, "ant.home"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_61

    .line 70
    sget-object v1, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->myScript:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    if-nez p4, :cond_44

    .line 77
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p4

    .line 80
    :cond_44
    array-length v1, p2

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 81
    const-string v2, "perl"

    aput-object v2, v1, v4

    .line 82
    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 83
    const/4 v0, 0x2

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 84
    const/4 v0, 0x3

    array-length v2, p2

    invoke-static {p2, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_9

    .line 67
    :cond_61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot locate antRun script: Property \'ant.home\' not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
