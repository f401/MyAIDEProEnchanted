.class public Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.source "OS2CommandLauncher.java"


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    .line 35
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 56
    .line 57
    if-nez p4, :cond_0

    .line 58
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p4

    .line 66
    :cond_0
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 68
    array-length v1, p2

    add-int/lit8 v1, v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 70
    const-string v2, "cmd"

    aput-object v2, v1, v4

    .line 71
    const/4 v2, 0x1

    const-string v3, "/c"

    aput-object v3, v1, v2

    .line 72
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 73
    const/4 v2, 0x3

    const-string v3, "&&"

    aput-object v3, v1, v2

    .line 74
    const/4 v2, 0x4

    const-string v3, "cd"

    aput-object v3, v1, v2

    .line 75
    const/4 v2, 0x5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 76
    const/4 v0, 0x6

    const-string v2, "&&"

    aput-object v2, v1, v0

    .line 78
    const/4 v0, 0x7

    array-length v2, p2

    invoke-static {p2, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    :goto_0
    return-object v0

    .line 61
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_0
.end method
