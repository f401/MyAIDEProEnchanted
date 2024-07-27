.class public Lorg/apache/tools/ant/util/ScriptFixBSFPath;
.super Ljava/lang/Object;
.source "ScriptFixBSFPath.java"


# static fields
.field private static final BSF_LANGUAGES:[Ljava/lang/String;

.field private static final BSF_LANGUAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BSF_MANAGER:Ljava/lang/String; = "org.apache.bsf.BSFManager"

.field private static final BSF_PACKAGE:Ljava/lang/String; = "org.apache.bsf"

.field private static final BSF_SCRIPT_RUNNER:Ljava/lang/String; = "org.apache.tools.ant.util.optional.ScriptRunner"

.field private static final UTIL_OPTIONAL_PACKAGE:Ljava/lang/String; = "org.apache.tools.ant.util.optional"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    .line 48
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "js"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "org.mozilla.javascript.Scriptable"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "javascript"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "org.mozilla.javascript.Scriptable"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "jacl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "tcl.lang.Interp"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "netrexx"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "netrexx.lang.Rexx"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "nrx"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "netrexx.lang.Rexx"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "jython"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "org.python.core.Py"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "py"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "org.python.core.Py"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "xslt"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "org.apache.xpath.objects.XObject"

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGES:[Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGE_MAP:Ljava/util/Map;

    .line 62
    :goto_0
    sget-object v1, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    sget-object v2, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGE_MAP:Ljava/util/Map;

    aget-object v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v1, v1, v4

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getClassSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 68
    invoke-static {p2}, Lorg/apache/tools/ant/util/LoaderUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/LoaderUtils;->getResourceSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getClassSource(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->getClassSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fixClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Lorg/apache/tools/ant/AntClassLoader;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v0, p1

    .line 103
    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    .line 106
    const-string v1, "org.apache.bsf.BSFManager"

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->getClassSource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 110
    if-nez v5, :cond_4

    move v2, v3

    .line 113
    :goto_1
    sget-object v1, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->BSF_LANGUAGE_MAP:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 119
    invoke-static {v6, v1}, Lorg/apache/tools/ant/util/LoaderUtils;->classExists(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 120
    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/LoaderUtils;->classExists(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v6, v3

    .line 123
    :goto_2
    if-nez v2, :cond_2

    if-eqz v6, :cond_6

    .line 126
    :cond_2
    :goto_3
    if-nez v5, :cond_8

    .line 127
    const-string v1, "org.apache.bsf.BSFManager"

    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->getClassSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 130
    :goto_4
    if-eqz v1, :cond_7

    .line 135
    if-eqz v6, :cond_3

    .line 136
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->addPathComponent(Ljava/io/File;)V

    .line 137
    const-string v1, "org.apache.bsf"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->addLoaderPackageRoot(Ljava/lang/String;)V

    .line 140
    :cond_3
    if-eqz v3, :cond_0

    .line 141
    const-string v1, "org.apache.tools.ant.util.optional.ScriptRunner"

    invoke-static {v1}, Lorg/apache/tools/ant/util/LoaderUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/LoaderUtils;->getResourceSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->addPathComponent(Ljava/io/File;)V

    .line 145
    const-string v1, "org.apache.tools.ant.util.optional"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->addLoaderPackageRoot(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v4

    .line 110
    goto :goto_1

    :cond_5
    move v6, v4

    .line 120
    goto :goto_2

    :cond_6
    move v3, v4

    .line 123
    goto :goto_3

    .line 131
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to find BSF classes for scripting"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v5

    goto :goto_4
.end method
