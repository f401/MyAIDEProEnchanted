.class public Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;
.super Ljava/lang/Object;
.source "JavahAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 85
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p0, :cond_10

    .line 86
    :cond_8
    const-string v0, "kaffeh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 87
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/javah/Kaffeh;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/Kaffeh;-><init>()V

    .line 110
    :goto_15
    return-object v0

    .line 89
    :cond_16
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isGij()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p0, :cond_26

    .line 90
    :cond_1e
    const-string v0, "gcjh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 91
    :cond_26
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/javah/Gcjh;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/Gcjh;-><init>()V

    goto :goto_15

    .line 93
    :cond_2c
    const-string v0, "10"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p0, :cond_4c

    .line 94
    const-string v0, "forking"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 98
    :cond_3e
    const-string v0, "forking"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 99
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;-><init>()V

    goto :goto_15

    .line 95
    :cond_4c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "javah does not exist under Java 10 and higher, use the javac task with nativeHeaderDir instead"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_54
    const-string v0, "sun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 102
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/javah/SunJavah;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/SunJavah;-><init>()V

    goto :goto_15

    .line 104
    :cond_62
    if-eqz p0, :cond_71

    .line 105
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 105
    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    move-result-object v0

    goto :goto_15

    .line 110
    :cond_71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;-><init>()V

    goto :goto_15
.end method

.method public static getDefault()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    const-string v0, "kaffeh"

    .line 49
    :goto_8
    return-object v0

    .line 46
    :cond_9
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isGij()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    const-string v0, "gcjh"

    goto :goto_8

    .line 49
    :cond_12
    const-string v0, "forking"

    goto :goto_8
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 125
    if-eqz p1, :cond_b

    :goto_2
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    return-object v0

    .line 127
    :cond_b
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_2
.end method
