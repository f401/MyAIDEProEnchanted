.class public Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
.super Ljava/lang/Object;
.source "CommandLauncher.java"


# static fields
.field protected static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

.field private static vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    .line 40
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 42
    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 43
    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 46
    const-string v0, "os/2"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 50
    :cond_0
    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/MacCommandLauncher;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/MacCommandLauncher;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 81
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "os/2"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    .line 59
    const-string v1, "win9x"

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    .line 64
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;

    const-string v2, "bin/antRun.bat"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    .line 67
    :cond_4
    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    .line 71
    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;

    const-string v2, "bin/antRun.pl"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    .line 73
    :cond_5
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    .line 78
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;

    const-string v1, "bin/antRun"

    new-instance v2, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractLauncher(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .registers 4

    .line 168
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 168
    return-object v0
.end method

.method public static getShellLauncher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .registers 2

    .line 141
    const-string v0, "ant.shellLauncher"

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->extractLauncher(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 147
    :cond_0
    return-object v0
.end method

.method private static getSystemLauncher(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .registers 6

    .line 174
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 178
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 186
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 182
    :goto_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate launcher class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static getVMLauncher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .registers 2

    .line 158
    const-string v0, "ant.vmLauncher"

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->extractLauncher(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 163
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$extractLauncher$0(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .registers 3

    .line 169
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    return-object v0
.end method

.method static synthetic lambda$extractLauncher$1(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .registers 2

    .line 170
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->getSystemLauncher(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object v0

    return-object v0
.end method

.method public static setShellLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .registers 3

    .line 210
    if-eqz p0, :cond_0

    .line 211
    const-string v0, "ant.shellLauncher"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_0
    return-void
.end method

.method public static setVMLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .registers 3

    .line 197
    if-eqz p0, :cond_0

    .line 198
    const-string v0, "ant.vmLauncher"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    if-eqz p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execute:CommandLauncher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {p2}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 103
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    if-nez p4, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot execute a process in different directory under this JVM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
