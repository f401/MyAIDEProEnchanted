.class public Lorg/codehaus/groovy/vmplugin/VMPluginFactory;
.super Ljava/lang/Object;


# static fields
.field private static j6:Lorg/codehaus/groovy/vmplugin/VMPlugin;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "java.util.Objects"

    const-string v1, "org.codehaus.groovy.vmplugin.v7.Java7"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/groovy/vmplugin/VMPlugin;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6:Lorg/codehaus/groovy/vmplugin/VMPlugin;

    if-nez v0, :cond_16

    const-string v0, "javax.script.ScriptEngine"

    const-string v1, "org.codehaus.groovy.vmplugin.v6.Java6"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/groovy/vmplugin/VMPlugin;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6:Lorg/codehaus/groovy/vmplugin/VMPlugin;

    :cond_16
    sget-object v0, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6:Lorg/codehaus/groovy/vmplugin/VMPlugin;

    if-nez v0, :cond_24

    const-string v0, "java.lang.annotation.Annotation"

    const-string v1, "org.codehaus.groovy.vmplugin.v5.Java5"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/groovy/vmplugin/VMPlugin;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6:Lorg/codehaus/groovy/vmplugin/VMPlugin;

    :cond_24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Lorg/codehaus/groovy/vmplugin/VMPlugin;
    .registers 1

    sget-object v0, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6:Lorg/codehaus/groovy/vmplugin/VMPlugin;

    return-object v0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/groovy/vmplugin/VMPlugin;
    .registers 3

    :try_start_0
    const-class v0, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/groovy/vmplugin/VMPlugin;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method
