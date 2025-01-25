.class public Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;
.super Ljava/lang/Object;
.source "Native2AsciiAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 82
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->shouldUseKaffe()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p0, :cond_10

    .line 83
    :cond_8
    const-string v0, "kaffe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;-><init>()V

    .line 96
    :goto_15
    return-object v0

    .line 85
    :cond_16
    const-string v0, "sun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 86
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/SunNative2Ascii;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/SunNative2Ascii;-><init>()V

    goto :goto_15

    .line 87
    :cond_24
    const-string v0, "builtin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 88
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;-><init>()V

    goto :goto_15

    .line 89
    :cond_32
    if-eqz p0, :cond_41

    .line 90
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    move-result-object v0

    goto :goto_15

    .line 96
    :cond_41
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;-><init>()V

    goto :goto_15
.end method

.method public static getDefault()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->shouldUseKaffe()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    const-string v0, "kaffe"

    .line 46
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "builtin"

    goto :goto_8
.end method

.method private static resolveClassName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 111
    if-eqz p1, :cond_b

    :goto_2
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    return-object v0

    .line 113
    :cond_b
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_2
.end method

.method private static final shouldUseKaffe()Z
    .registers 1

    .line 118
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isClasspathBased()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
