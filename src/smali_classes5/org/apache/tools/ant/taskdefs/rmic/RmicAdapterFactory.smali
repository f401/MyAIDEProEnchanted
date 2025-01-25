.class public final Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;
.super Ljava/lang/Object;
.source "RmicAdapterFactory.java"


# static fields
.field public static final DEFAULT_COMPILER:Ljava/lang/String; = "default"

.field public static final ERROR_NOT_RMIC_ADAPTER:Ljava/lang/String; = "Class of unexpected Type: "

.field public static final ERROR_UNKNOWN_COMPILER:Ljava/lang/String; = "Class not found: "


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;->getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 98
    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 99
    :cond_e
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 100
    const-string p0, "kaffe"

    .line 107
    :cond_16
    :goto_16
    const-string v0, "sun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 108
    new-instance v0, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/rmic/SunRmic;-><init>()V

    .line 123
    :goto_23
    return-object v0

    .line 101
    :cond_24
    const-string v0, "9"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 102
    const-string p0, "forking"

    goto :goto_16

    .line 104
    :cond_2f
    const-string p0, "sun"

    goto :goto_16

    .line 110
    :cond_32
    const-string v0, "kaffe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 111
    new-instance v0, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;-><init>()V

    goto :goto_23

    .line 113
    :cond_40
    const-string v0, "weblogic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 114
    new-instance v0, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/rmic/WLRmic;-><init>()V

    goto :goto_23

    .line 116
    :cond_4e
    const-string v0, "forking"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 117
    new-instance v0, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;-><init>()V

    goto :goto_23

    .line 119
    :cond_5c
    const-string v0, "xnew"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 120
    new-instance v0, Lorg/apache/tools/ant/taskdefs/rmic/XNewRmic;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/rmic/XNewRmic;-><init>()V

    goto :goto_23

    .line 123
    :cond_6a
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    move-result-object v0

    goto :goto_23
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 140
    if-eqz p1, :cond_b

    :goto_2
    const-class v0, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    return-object v0

    .line 142
    :cond_b
    const-class v0, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_2
.end method
