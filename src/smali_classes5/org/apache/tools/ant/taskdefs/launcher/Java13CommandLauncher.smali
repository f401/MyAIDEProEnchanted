.class public Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
.source "Java13CommandLauncher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    if-eqz p1, :cond_1b

    .line 54
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execute:Java13CommandLauncher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {p2}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 58
    :cond_1b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    move-result-object v0

    return-object v0

    .line 61
    :catch_24
    move-exception v0

    .line 63
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to execute command"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_2d
    move-exception v0

    .line 60
    throw v0
.end method
