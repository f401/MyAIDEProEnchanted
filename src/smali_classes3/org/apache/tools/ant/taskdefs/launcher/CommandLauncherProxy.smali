.class public Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
.source "CommandLauncherProxy.java"


# instance fields
.field private final myLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;


# direct methods
.method protected constructor <init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;->myLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 33
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;->myLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method
