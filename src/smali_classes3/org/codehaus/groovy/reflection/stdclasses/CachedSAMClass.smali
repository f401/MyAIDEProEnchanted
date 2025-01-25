.class public Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;
.super Lorg/codehaus/groovy/reflection/CachedClass;


# instance fields
.field private final a8:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/codehaus/groovy/reflection/CachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    invoke-static {p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->a8:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Lorg/codehaus/groovy/GroovyBugError;

    const-string p2, "assigned method should not have been null!"

    invoke-direct {p1, p2}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static DW(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass$1;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_b} :catch_e

    if-eqz p0, :cond_f

    return-object p0

    :catch_e
    move-exception p0

    :cond_f
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static j6(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_19
    if-ge v2, v0, :cond_47

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_44

    :cond_28
    const-class v5, Lorg/codehaus/groovy/transform/trait/Traits$Implemented;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_31

    goto :goto_44

    :cond_31
    :try_start_31
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_3e} :catch_3f

    goto :goto_44

    :catch_3f
    move-exception v5

    if-eqz v3, :cond_43

    return-object v1

    :cond_43
    move-object v3, v4

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_47
    return-object v3

    :cond_48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0, v0}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    return-object v1

    :cond_57
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_5b
    :goto_5b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-static {p0, v2}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_5b

    :cond_71
    invoke-static {v0}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/util/List;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_17

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    :cond_17
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_21

    :cond_4a
    return-object v1

    :cond_4b
    return-object v0
.end method

.method private static j6(Ljava/lang/Class;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_49

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_25

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_25
    invoke-static {p0}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->DW(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    :goto_2a
    if-ge v2, v0, :cond_49

    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_46

    :cond_39
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_49
    :goto_49
    return-void
.end method

.method private static j6(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1c} :catch_26

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_27

    and-int/lit16 v0, v2, 0x40a

    if-nez v0, :cond_27

    const/4 p0, 0x1

    return p0

    :catch_26
    move-exception v0

    :cond_27
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_2c

    return v1

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method
