.class public Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;
.super Lorg/apache/tools/ant/util/ScriptRunnerBase;
.source "JavaxScriptRunner.java"


# static fields
.field private static final DROP_GRAAL_SECURITY_RESTRICTIONS:Ljava/lang/String; = "polyglot.js.allowAllAccess"

.field private static final ENABLE_NASHORN_COMPAT_IN_GRAAL:Ljava/lang/String; = "polyglot.js.nashorn-compat"

.field private static final JS_LANGUAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private compiledScript:Ljavax/script/CompiledScript;

.field private keptEngine:Ljavax/script/ScriptEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "javascript"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->JS_LANGUAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;-><init>()V

    return-void
.end method

.method private applyBindings(Ljava/util/function/BiConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getBeans()Ljava/util/Map;

    move-result-object v0

    .line 184
    const-string v1, "FX"

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 185
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda2;

    sget-object v2, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda3;

    .line 186
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    :cond_26
    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 190
    return-void
.end method

.method private createEngine()Ljavax/script/ScriptEngine;
    .registers 5

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->keptEngine:Ljavax/script/ScriptEngine;

    if-eqz v0, :cond_5

    .line 213
    :cond_4
    :goto_4
    return-object v0

    .line 196
    :cond_5
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->languageIsJavaScript()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 197
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->maybeEnableNashornCompatibility()V

    .line 199
    :cond_e
    new-instance v0, Ljavax/script/ScriptEngineManager;

    invoke-direct {v0}, Ljavax/script/ScriptEngineManager;-><init>()V

    .line 200
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/ScriptEngineManager;->getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 201
    if-nez v0, :cond_35

    const-string v1, "15"

    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 202
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->languageIsJavaScript()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 204
    const-string v2, "Java 15 has removed Nashorn, you must provide an engine for running JavaScript yourself. GraalVM JavaScript currently is the preferred option."

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 209
    :cond_35
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->maybeApplyGraalJsProperties(Ljavax/script/ScriptEngine;)V

    .line 210
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getKeepEngine()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    iput-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->keptEngine:Ljavax/script/ScriptEngine;

    goto :goto_4
.end method

.method static synthetic lambda$applyBindings$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 6

    .line 186
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 186
    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private languageIsJavaScript()Z
    .registers 3

    .line 238
    sget-object v0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->JS_LANGUAGES:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maybeApplyGraalJsProperties(Ljavax/script/ScriptEngine;)V
    .registers 5

    .line 219
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Graal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 220
    const/16 v0, 0x64

    invoke-interface {p1, v0}, Ljavax/script/ScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v0

    .line 221
    const-string v1, "polyglot.js.allowAllAccess"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_22
    return-void
.end method

.method private maybeEnableNashornCompatibility()V
    .registers 3

    .line 228
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 229
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.disable.graal.nashorn.compat"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 231
    const-string v0, "false"

    .line 229
    :goto_18
    const-string v1, "polyglot.js.nashorn-compat"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    :cond_1d
    return-void

    .line 231
    :cond_1e
    const-string v0, "true"

    goto :goto_18
.end method

.method private static unwrap(Ljava/lang/Throwable;)Lorg/apache/tools/ant/BuildException;
    .registers 4

    .line 247
    instance-of v0, p0, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_1a

    move-object v0, p0

    check-cast v0, Lorg/apache/tools/ant/BuildException;

    .line 248
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 250
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 251
    instance-of v2, v1, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_1d

    move-object v0, v1

    .line 252
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    move-object p0, v1

    goto :goto_7

    .line 247
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7

    .line 255
    :cond_1c
    return-object v0

    :cond_1d
    move-object p0, v1

    goto :goto_7
.end method


# virtual methods
.method public evaluateScript(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->checkLanguage()V

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->replaceContextLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 101
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getCompiled()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 102
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v1

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v3

    .line 103
    const-string v4, "%s.%s.%d.%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "org.apache.ant.scriptcache"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    if-nez v0, :cond_54

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/script/CompiledScript;

    iput-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    .line 110
    :cond_54
    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    if-nez v0, :cond_90

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->createEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_ef

    .line 117
    instance-of v3, v0, Ljavax/script/Compilable;

    if-eqz v3, :cond_c7

    .line 118
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compile script "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 121
    check-cast v0, Ljavax/script/Compilable;

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljavax/script/Compilable;->compile(Ljava/lang/String;)Ljavax/script/CompiledScript;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    .line 129
    :goto_87
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    :cond_90
    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    if-eqz v0, :cond_110

    .line 133
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda0;-><init>(Ljavax/script/Bindings;)V

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->applyBindings(Ljava/util/function/BiConsumer;)V

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run compiled script "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 141
    iget-object v1, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    invoke-virtual {v1, v0}, Ljavax/script/CompiledScript;->eval(Ljavax/script/Bindings;)Ljava/lang/Object;
    :try_end_c2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_7 .. :try_end_c2} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c2} :catch_101
    .catchall {:try_start_7 .. :try_end_c2} :catchall_ea

    move-result-object v0

    .line 177
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    .line 154
    :goto_c6
    return-object v0

    .line 124
    :cond_c7
    :try_start_c7
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "script compilation not available for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;
    :try_end_e3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_c7 .. :try_end_e3} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e3} :catch_101
    .catchall {:try_start_c7 .. :try_end_e3} :catchall_ea

    goto :goto_87

    .line 156
    :catch_e4
    move-exception v0

    .line 163
    :try_start_e5
    invoke-static {v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->unwrap(Ljava/lang/Throwable;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_ea
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_ea

    .line 177
    :catchall_ea
    move-exception v0

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    .line 178
    throw v0

    .line 113
    :cond_ef
    :try_start_ef
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 115
    const-string v1, "Unable to create javax script engine for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_101
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_ef .. :try_end_101} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_101} :catch_101
    .catchall {:try_start_ef .. :try_end_101} :catchall_ea

    .line 164
    :catch_101
    move-exception v0

    move-object v1, v0

    .line 167
    :try_start_103
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_148

    .line 169
    instance-of v1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_149

    .line 170
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0
    :try_end_110
    .catchall {:try_start_103 .. :try_end_110} :catchall_ea

    .line 145
    :cond_110
    :try_start_110
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->createEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_12d

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda1;-><init>(Ljavax/script/ScriptEngine;)V

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->applyBindings(Ljava/util/function/BiConsumer;)V

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_128
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_110 .. :try_end_128} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_128} :catch_101
    .catchall {:try_start_110 .. :try_end_128} :catchall_ea

    move-result-object v0

    .line 177
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    goto :goto_c6

    .line 147
    :cond_12d
    :try_start_12d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create javax script engine for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_148
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_12d .. :try_end_148} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_148} :catch_101
    .catchall {:try_start_12d .. :try_end_148} :catchall_ea

    :cond_148
    move-object v0, v1

    .line 175
    :cond_149
    :try_start_149
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_14f
    .catchall {:try_start_149 .. :try_end_14f} :catchall_ea
.end method

.method public executeScript(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->evaluateScript(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public getManagerName()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, "javax"

    return-object v0
.end method

.method public supportsLanguage()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v2, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->keptEngine:Ljavax/script/ScriptEngine;

    if-eqz v2, :cond_7

    .line 70
    :goto_6
    return v0

    .line 65
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->checkLanguage()V

    .line 66
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->replaceContextLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 68
    :try_start_e
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->createEngine()Ljavax/script/ScriptEngine;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_1f
    .catchall {:try_start_e .. :try_end_11} :catchall_1a

    move-result-object v3

    if-eqz v3, :cond_18

    .line 72
    :goto_14
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    goto :goto_6

    :cond_18
    move v0, v1

    .line 68
    goto :goto_14

    .line 72
    :catchall_1a
    move-exception v0

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    .line 73
    throw v0

    .line 69
    :catch_1f
    move-exception v0

    .line 70
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    move v0, v1

    goto :goto_6
.end method
