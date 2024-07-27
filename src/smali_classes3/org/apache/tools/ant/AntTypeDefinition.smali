.class public Lorg/apache/tools/ant/AntTypeDefinition;
.super Ljava/lang/Object;
.source "AntTypeDefinition.java"


# instance fields
.field private adaptToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private adapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private restrict:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    return-void
.end method

.method private createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 264
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->innerCreateAndSet(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not accessible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :catch_1
    move-exception v0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is abstract"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :catch_2
    move-exception v0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has no compatible constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :catch_3
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": A class needed by class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 265
    :catch_4
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private extractClassname(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 376
    if-nez p1, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private icreate(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .registers 5

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 219
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/TypeAdapter;

    .line 226
    invoke-interface {v0, v1}, Lorg/apache/tools/ant/TypeAdapter;->setProxy(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkClass(Lorg/apache/tools/ant/Project;)V
    .registers 4

    .line 241
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    .line 243
    if-eqz v0, :cond_3

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/TypeAdapter;

    .line 253
    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/TypeAdapter;->checkProxyClass(Ljava/lang/Class;)V

    .line 255
    :cond_2
    return-void

    .line 244
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create class for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .registers 3

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->icreate(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x4

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->innerGetTypeClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load class ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 176
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load a dependent class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p1, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public innerCreateAndSet(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/apache/tools/ant/Project;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move v0, v1

    .line 318
    :goto_0
    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 323
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 314
    new-array v0, v1, [Ljava/lang/Class;

    const-class v3, Lorg/apache/tools/ant/Project;

    aput-object v3, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move v0, v2

    .line 315
    goto :goto_0

    .line 318
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    goto :goto_1
.end method

.method public innerGetTypeClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-object v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    .line 196
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    goto :goto_1
.end method

.method public isRestrict()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    return v0
.end method

.method public sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .registers 5

    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    iget-boolean v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdaptToClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    .line 123
    return-void
.end method

.method public setAdapterClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    .line 114
    return-void
.end method

.method public setClass(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    .line 82
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    goto :goto_0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    .line 132
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRestrict(Z)V
    .registers 2

    .line 48
    iput-boolean p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    .line 49
    return-void
.end method

.method public similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .registers 7

    const/4 v2, 0x0

    .line 354
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    .line 357
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    .line 358
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    .line 359
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    .line 360
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    iget-boolean v1, p1, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 368
    :goto_0
    return v0

    .line 366
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 368
    if-eq v0, v1, :cond_2

    instance-of v3, v0, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v3, :cond_3

    instance-of v3, v1, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v3, :cond_3

    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    .line 371
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->getClasspath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    .line 372
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->getClasspath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method
