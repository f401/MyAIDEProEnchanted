.class public Lorg/apache/tools/ant/util/ClasspathUtils;
.super Ljava/lang/Object;
.source "ClasspathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
    }
.end annotation


# static fields
.field public static final REUSE_LOADER_REF:Ljava/lang/String; = "ant.reuse.loader"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/Project;)Z
    .registers 2

    .line 72
    invoke-static {p0}, Lorg/apache/tools/ant/util/ClasspathUtils;->isMagicPropertySet(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    return v0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 4

    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;Z)Ljava/lang/ClassLoader;
    .registers 5

    .line 152
    invoke-static {p0}, Lorg/apache/tools/ant/util/ClasspathUtils;->isMagicPropertySet(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;ZZ)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;ZZ)Ljava/lang/ClassLoader;
    .registers 9

    .line 174
    const/4 v0, 0x0

    .line 177
    if-eqz p2, :cond_11

    if-eqz p4, :cond_11

    .line 178
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_f

    instance-of v1, v0, Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1f

    .line 184
    :cond_f
    check-cast v0, Ljava/lang/ClassLoader;

    .line 186
    :cond_11
    if-nez v0, :cond_1e

    .line 187
    invoke-static {p0, p1, p3}, Lorg/apache/tools/ant/util/ClasspathUtils;->getUniqueClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 188
    if-eqz p2, :cond_1e

    if-eqz p4, :cond_1e

    .line 189
    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_1e
    return-object v0

    .line 180
    :cond_1f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The specified loader id %s does not reference a class loader"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;)Ljava/lang/ClassLoader;
    .registers 3

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;Z)Ljava/lang/ClassLoader;
    .registers 8

    .line 109
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    instance-of v2, v0, Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_24

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ant.loader."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    check-cast v0, Lorg/apache/tools/ant/types/Path;

    invoke-static {p0, v0, v1, p2}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 112
    :cond_24
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "The specified classpathref %s does not reference a Path."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getDelegate(Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
    .registers 2

    .line 283
    new-instance v0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    return-object v0
.end method

.method public static getUniqueClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Ljava/lang/ClassLoader;
    .registers 5

    .line 210
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 211
    if-eqz p2, :cond_d

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 213
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V

    .line 215
    :cond_d
    return-object v0
.end method

.method private static isMagicPropertySet(Lorg/apache/tools/ant/Project;)Z
    .registers 2

    .line 291
    const-string v0, "ant.reuse.loader"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 230
    const-class v0, Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 253
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 260
    return-object v0

    .line 256
    :cond_1a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Class of unexpected Type: %s expected : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2b} :catch_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2b} :catch_9a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_9c
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_2b} :catch_43

    .line 261
    :catch_2b
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 269
    :catch_43
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be loaded because of an invalid dependency."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 266
    :catch_60
    move-exception v0

    .line 267
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Specified class should have a public constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 263
    :catch_7d
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Specified class should have a no argument constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 266
    :catch_9a
    move-exception v0

    goto :goto_61

    :catch_9c
    move-exception v0

    goto :goto_61
.end method
