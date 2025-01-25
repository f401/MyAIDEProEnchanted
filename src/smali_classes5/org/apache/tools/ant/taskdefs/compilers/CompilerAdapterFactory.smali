.class public final Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;
.super Ljava/lang/Object;
.source "CompilerAdapterFactory.java"


# static fields
.field private static final CLASSIC_JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPILER_CLASSIC:Ljava/lang/String; = "classic"

.field public static final COMPILER_EXTJAVAC:Ljava/lang/String; = "extJavac"

.field public static final COMPILER_EXTJAVAC_CLASSNAME:Ljava/lang/String;

.field public static final COMPILER_GCJ:Ljava/lang/String; = "gcj"

.field public static final COMPILER_JAVAC_10_PLUS:Ljava/lang/String; = "javac10+"

.field public static final COMPILER_JAVAC_1_1:Ljava/lang/String; = "javac1.1"

.field public static final COMPILER_JAVAC_1_2:Ljava/lang/String; = "javac1.2"

.field public static final COMPILER_JAVAC_1_3:Ljava/lang/String; = "javac1.3"

.field public static final COMPILER_JAVAC_1_4:Ljava/lang/String; = "javac1.4"

.field public static final COMPILER_JAVAC_1_5:Ljava/lang/String; = "javac1.5"

.field public static final COMPILER_JAVAC_1_6:Ljava/lang/String; = "javac1.6"

.field public static final COMPILER_JAVAC_1_7:Ljava/lang/String; = "javac1.7"

.field public static final COMPILER_JAVAC_1_8:Ljava/lang/String; = "javac1.8"

.field public static final COMPILER_JAVAC_9:Ljava/lang/String; = "javac9"

.field public static final COMPILER_JAVAC_9_ALIAS:Ljava/lang/String; = "javac1.9"

.field public static final COMPILER_JIKES:Ljava/lang/String; = "jikes"

.field public static final COMPILER_JVC:Ljava/lang/String; = "jvc"

.field public static final COMPILER_JVC_ALIAS:Ljava/lang/String; = "microsoft"

.field public static final COMPILER_KJC:Ljava/lang/String; = "kjc"

.field public static final COMPILER_MODERN:Ljava/lang/String; = "modern"

.field public static final COMPILER_MODERN_CLASSNAME:Ljava/lang/String;

.field public static final COMPILER_SYMANTEC:Ljava/lang/String; = "symantec"

.field public static final COMPILER_SYMANTEC_ALIAS:Ljava/lang/String; = "sj"

.field private static final FORKED_JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JDK_COMPILER_NICKNAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODERN_COMPILER:Ljava/lang/String; = "com.sun.tools.javac.Main"

.field private static final MODERN_JDK_COMPILERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    const-class v0, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->COMPILER_MODERN_CLASSNAME:Ljava/lang/String;

    .line 64
    const-class v1, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->COMPILER_EXTJAVAC_CLASSNAME:Ljava/lang/String;

    .line 66
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "javac1.1"

    aput-object v3, v2, v5

    const-string v3, "javac1.2"

    aput-object v3, v2, v6

    const-string v3, "javac1.3"

    aput-object v3, v2, v7

    const-string v3, "javac1.4"

    aput-object v3, v2, v8

    const-string v3, "javac1.5"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "javac1.6"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "javac1.7"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "javac1.8"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "javac1.9"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "javac9"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "javac10+"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "classic"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "modern"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "extJavac"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    aput-object v0, v2, v3

    const/16 v3, 0xf

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILERS:Ljava/util/List;

    .line 85
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "extJavac"

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->FORKED_JDK_COMPILERS:Ljava/util/List;

    .line 90
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "classic"

    aput-object v3, v2, v5

    const-string v3, "modern"

    aput-object v3, v2, v6

    const-string v3, "extJavac"

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    aput-object v1, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILER_NICKNAMES:Ljava/util/List;

    .line 98
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "javac1.1"

    aput-object v2, v1, v5

    const-string v2, "javac1.2"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->CLASSIC_JDK_COMPILERS:Ljava/util/List;

    .line 103
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "javac1.3"

    aput-object v2, v1, v5

    const-string v2, "javac1.4"

    aput-object v2, v1, v6

    const-string v2, "javac1.5"

    aput-object v2, v1, v7

    const-string v2, "javac1.6"

    aput-object v2, v1, v8

    const-string v2, "javac1.7"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "javac1.8"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "javac1.9"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "javac9"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "javac10+"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->MODERN_JDK_COMPILERS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method private static containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 314
    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static doesModernCompilerExist()Z
    .registers 3

    const/4 v0, 0x1

    .line 229
    :try_start_1
    const-string v1, "com.sun.tools.javac.Main"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    .line 242
    :goto_6
    return v0

    .line 231
    :catch_7
    move-exception v1

    .line 233
    :try_start_8
    const-class v1, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_17

    .line 235
    const-string v2, "com.sun.tools.javac.Main"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_6

    .line 238
    :catch_16
    move-exception v0

    .line 242
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v5, 0x1

    .line 180
    const-string v0, "jikes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 181
    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;-><init>()V

    .line 218
    :goto_e
    return-object v0

    .line 183
    :cond_f
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isForkedJavac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 184
    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;-><init>()V

    goto :goto_e

    .line 186
    :cond_1b
    const-string v0, "classic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 187
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isClassicJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 188
    :cond_29
    const-string v0, "This version of java does not support the classic compiler; upgrading to modern"

    invoke-virtual {p1, v0, v5}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 191
    const-string p0, "modern"

    .line 193
    :cond_30
    const-string v0, "modern"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 194
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isModernJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 196
    :cond_3e
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->doesModernCompilerExist()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 197
    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/compilers/Javac13;-><init>()V

    goto :goto_e

    .line 204
    :cond_4a
    const-string v0, "jvc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 205
    const-string v0, "microsoft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 206
    :cond_5a
    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;-><init>()V

    goto :goto_e

    .line 208
    :cond_60
    const-string v0, "kjc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 209
    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/compilers/Kjc;-><init>()V

    goto :goto_e

    .line 211
    :cond_6e
    const-string v0, "gcj"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 212
    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;-><init>()V

    goto :goto_e

    .line 214
    :cond_7c
    const-string v0, "sj"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 215
    const-string v0, "symantec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 216
    :cond_8c
    new-instance v0, Lorg/apache/tools/ant/taskdefs/compilers/Sj;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/compilers/Sj;-><init>()V

    goto/16 :goto_e

    .line 218
    :cond_93
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object v0

    goto/16 :goto_e

    .line 199
    :cond_a1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to find a javac compiler;\n%s is not on the classpath.\nPerhaps JAVA_HOME does not point to the JDK.\nIt is currently set to \"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.sun.tools.javac.Main"

    aput-object v4, v2, v3

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static isClassicJdkCompiler(Ljava/lang/String;)Z
    .registers 2

    .line 300
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->CLASSIC_JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isForkedJavac(Ljava/lang/String;)Z
    .registers 2

    .line 270
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->FORKED_JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJdkCompiler(Ljava/lang/String;)Z
    .registers 2

    .line 280
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJdkCompilerNickname(Ljava/lang/String;)Z
    .registers 2

    .line 290
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->JDK_COMPILER_NICKNAMES:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isModernJdkCompiler(Ljava/lang/String;)Z
    .registers 2

    .line 310
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->MODERN_JDK_COMPILERS:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 257
    if-eqz p1, :cond_b

    :goto_2
    const-class v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    return-object v0

    .line 259
    :cond_b
    const-class v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_2
.end method
