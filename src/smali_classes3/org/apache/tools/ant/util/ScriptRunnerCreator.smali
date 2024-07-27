.class public Lorg/apache/tools/ant/util/ScriptRunnerCreator;
.super Ljava/lang/Object;
.source "ScriptRunnerCreator.java"


# static fields
.field private static final AUTO:Ljava/lang/String; = "auto"

.field private static final BSF:Ljava/lang/String; = "bsf"

.field private static final BSF_MANAGER:Ljava/lang/String; = "org.apache.bsf.BSFManager"

.field private static final BSF_PACK:Ljava/lang/String; = "org.apache.bsf"

.field private static final BSF_RUNNER:Ljava/lang/String; = "org.apache.tools.ant.util.optional.ScriptRunner"

.field private static final JAVAX:Ljava/lang/String; = "javax"

.field private static final JAVAX_MANAGER:Ljava/lang/String; = "javax.script.ScriptEngineManager"

.field private static final JAVAX_RUNNER:Ljava/lang/String; = "org.apache.tools.ant.util.optional.JavaxScriptRunner"

.field private static final UTIL_OPT:Ljava/lang/String; = "org.apache.tools.ant.util.optional"


# instance fields
.field private language:Ljava/lang/String;

.field private manager:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private scriptLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->scriptLoader:Ljava/lang/ClassLoader;

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->project:Lorg/apache/tools/ant/Project;

    .line 52
    return-void
.end method

.method private createRunner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .registers 7

    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->manager:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->manager:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    const-string v1, "org.apache.bsf.BSFManager"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->scriptLoader:Ljava/lang/ClassLoader;

    invoke-static {p2}, Lorg/apache/tools/ant/util/LoaderUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Lorg/apache/tools/ant/util/ScriptFixBSFPath;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->scriptLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->fixClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 126
    :goto_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->scriptLoader:Ljava/lang/ClassLoader;

    invoke-static {p3, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/ScriptRunnerBase;

    .line 131
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setProject(Lorg/apache/tools/ant/Project;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setLanguage(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->scriptLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setScriptClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 123
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->scriptLoader:Ljava/lang/ClassLoader;

    invoke-static {p2, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    invoke-static {v0}, Lorg/apache/tools/ant/util/ReflectUtil;->toBuildException(Ljava/lang/Exception;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public createRunner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .registers 7

    monitor-enter p0

    .line 64
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->manager:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->language:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->scriptLoader:Ljava/lang/ClassLoader;

    .line 68
    if-eqz p2, :cond_6

    .line 71
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bsf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_0
    const-string v0, "bsf"

    const-string v1, "org.apache.bsf.BSFManager"

    const-string v2, "org.apache.tools.ant.util.optional.ScriptRunner"

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->createRunner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    const-string v0, "javax"

    const-string v1, "javax.script.ScriptEngineManager"

    const-string v2, "org.apache.tools.ant.util.optional.JavaxScriptRunner"

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->createRunner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/util/ScriptRunnerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    :cond_1
    if-eqz v0, :cond_3

    .line 85
    monitor-exit p0

    return-object v0

    .line 72
    :cond_2
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported language prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_3
    :try_start_2
    const-string v0, "javax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    const-string v0, "bsf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to load the BSF script engine manager (org.apache.bsf.BSFManager)"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to load a script engine manager (org.apache.bsf.BSFManager or javax.script.ScriptEngineManager)"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to load the script engine manager (javax.script.ScriptEngineManager)"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "script language must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
