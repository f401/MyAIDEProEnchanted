.class public Lorg/apache/tools/ant/taskdefs/condition/HasMethod;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "HasMethod.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private classname:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private field:Ljava/lang/String;

.field private ignoreSystemClasses:Z

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->ignoreSystemClasses:Z

    return-void
.end method

.method private isFieldFound(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_18

    aget-object v4, v2, v1

    .line 169
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->field:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_18
    return v0

    .line 168
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private isMethodFound(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_18

    aget-object v4, v2, v1

    .line 178
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 179
    const/4 v0, 0x1

    .line 182
    :cond_18
    return v0

    .line 177
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->ignoreSystemClasses:Z

    if-eqz v0, :cond_5a

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_19} :catch_3d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_19} :catch_78

    .line 113
    :try_start_19
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1e} :catch_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1e} :catch_3d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_19 .. :try_end_1e} :catch_78

    move-result-object v0

    .line 132
    :goto_1f
    return-object v0

    .line 114
    :catch_20
    move-exception v0

    .line 116
    :try_start_21
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" was found but a SecurityException has been raised while loading it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_3d} :catch_3d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_3d} :catch_78

    .line 133
    :catch_3d
    move-exception v0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" was not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_5a
    :try_start_5a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_63

    .line 124
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1f

    .line 126
    :cond_63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_73

    .line 130
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1f

    .line 132
    :cond_73
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_76} :catch_3d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5a .. :try_end_76} :catch_78

    move-result-object v0

    goto :goto_1f

    .line 136
    :catch_78
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load dependent class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" for class \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 58
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public eval()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classname:Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 149
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 151
    :try_start_7
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->method:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 153
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->isMethodFound(Ljava/lang/Class;)Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_3b

    move-result v0

    .line 160
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eq v1, v2, :cond_1e

    if-eqz v2, :cond_1e

    .line 161
    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 162
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 156
    :cond_1e
    :goto_1e
    return v0

    .line 155
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->field:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 156
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->isFieldFound(Ljava/lang/Class;)Z
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3b

    move-result v0

    .line 160
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eq v1, v2, :cond_1e

    if-eqz v2, :cond_1e

    .line 161
    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 162
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    goto :goto_1e

    .line 158
    :cond_33
    :try_start_33
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Neither method nor field defined"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 160
    :catchall_3b
    move-exception v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eq v1, v2, :cond_47

    if-eqz v2, :cond_47

    .line 161
    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 162
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 164
    :cond_47
    throw v0

    .line 147
    :cond_48
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No classname defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classname:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 46
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 47
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 69
    return-void
.end method

.method public setField(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->field:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setIgnoreSystemClasses(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->ignoreSystemClasses:Z

    .line 101
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->method:Ljava/lang/String;

    .line 85
    return-void
.end method
