.class public Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;
.super Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.source "WLRmic.java"


# static fields
.field public static final COMPILER_NAME:Ljava/lang/String; = "weblogic"

.field public static final ERROR_NO_WLRMIC_ON_CLASSPATH:Ljava/lang/String; = "Cannot use WebLogic rmic, as it is not available. Add it to Ant\'s classpath with the -lib option"

.field public static final ERROR_WLRMIC_FAILED:Ljava/lang/String; = "Error starting WebLogic rmic: "

.field public static final UNSUPPORTED_STUB_OPTION:Ljava/lang/String; = "Unsupported stub option: "

.field public static final WLRMIC_CLASSNAME:Ljava/lang/String; = "weblogic.rmic"

.field public static final WL_RMI_SKEL_SUFFIX:Ljava/lang/String; = "_WLSkel"

.field public static final WL_RMI_STUB_SUFFIX:Ljava/lang/String; = "_WLStub"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected addStubVersionOptions()Ljava/lang/String;
    .registers 5

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getStubVersion()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported stub option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 146
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected areIiopAndIdlSupported()Z
    .registers 2

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public execute()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 71
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    const-string v2, "Using WebLogic rmic"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 72
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "-noexit"

    aput-object v2, v0, v4

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->setupRmicCommand([Ljava/lang/String;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v2

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    const-string v0, "weblogic.rmic"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    :goto_0
    const-string v3, "main"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 87
    :cond_0
    return v7

    .line 81
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 83
    const-string v0, "weblogic.rmic"

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_2
    instance-of v2, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_3

    .line 92
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 101
    :cond_2
    throw v0

    .line 94
    :cond_3
    :try_start_3
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    .line 95
    const-string v3, "Error starting WebLogic rmic: "

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot use WebLogic rmic, as it is not available. Add it to Ant\'s classpath with the -lib option"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getSkelClassSuffix()Ljava/lang/String;
    .registers 2

    .line 119
    const-string v0, "_WLSkel"

    return-object v0
.end method

.method public getStubClassSuffix()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "_WLStub"

    return-object v0
.end method

.method protected preprocessCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;->filterJvmCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
