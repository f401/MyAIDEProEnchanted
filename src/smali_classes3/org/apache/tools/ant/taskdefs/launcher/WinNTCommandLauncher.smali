.class public Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.source "WinNTCommandLauncher.java"


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    .line 33
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 54
    .line 55
    if-nez p4, :cond_0

    .line 56
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p4

    .line 64
    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    const-string v1, "cmd"

    aput-object v1, v0, v3

    .line 68
    const/4 v1, 0x1

    const-string v2, "/c"

    aput-object v2, v0, v1

    .line 69
    const/4 v1, 0x2

    const-string v2, "cd"

    aput-object v2, v0, v1

    .line 70
    const/4 v1, 0x3

    const-string v2, "/d"

    aput-object v2, v0, v1

    .line 71
    const/4 v1, 0x4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    const/4 v1, 0x5

    const-string v2, "&&"

    aput-object v2, v0, v1

    .line 74
    const/4 v1, 0x6

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    :goto_0
    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_0
.end method
