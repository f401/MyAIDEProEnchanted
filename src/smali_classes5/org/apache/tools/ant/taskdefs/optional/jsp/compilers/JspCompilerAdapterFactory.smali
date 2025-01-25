.class public final Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapterFactory;
.super Ljava/lang/Object;
.source "JspCompilerAdapterFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/AntClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/AntClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 83
    const-string v0, "jasper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 85
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;-><init>(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;)V

    .line 91
    :goto_12
    return-object v0

    .line 87
    :cond_13
    const-string v0, "jasper41"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 89
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/jsp/Jasper41Mangler;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/Jasper41Mangler;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;-><init>(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;)V

    goto :goto_12

    .line 91
    :cond_26
    invoke-static {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapterFactory;->resolveClassName(Ljava/lang/String;Lorg/apache/tools/ant/AntClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;

    move-result-object v0

    goto :goto_12
.end method

.method private static resolveClassName(Ljava/lang/String;Lorg/apache/tools/ant/AntClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_4b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_1a} :catch_33
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 114
    :catchall_1b
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " caused an interesting exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 111
    :catch_33
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t the classname of a compiler adapter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 109
    :catch_4b
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
