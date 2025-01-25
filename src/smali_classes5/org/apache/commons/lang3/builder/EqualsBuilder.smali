.class public Lorg/apache/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private bypassReflectionClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private excludeFields:[Ljava/lang/String;

.field private isEquals:Z

.field private reflectUpToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private testRecursive:Z

.field private testTransients:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    .line 231
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method private appendArray(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 686
    :goto_e
    return-void

    .line 666
    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_1b

    .line 667
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 668
    :cond_1b
    instance-of v0, p1, [I

    if-eqz v0, :cond_27

    .line 669
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 670
    :cond_27
    instance-of v0, p1, [S

    if-eqz v0, :cond_33

    .line 671
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 672
    :cond_33
    instance-of v0, p1, [C

    if-eqz v0, :cond_3f

    .line 673
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 674
    :cond_3f
    instance-of v0, p1, [B

    if-eqz v0, :cond_4b

    .line 675
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 676
    :cond_4b
    instance-of v0, p1, [D

    if-eqz v0, :cond_57

    .line 677
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 678
    :cond_57
    instance-of v0, p1, [F

    if-eqz v0, :cond_63

    .line 679
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 680
    :cond_63
    instance-of v0, p1, [Z

    if-eqz v0, :cond_6f

    .line 681
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e

    .line 684
    :cond_6f
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_e
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 142
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p1}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 143
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 160
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 161
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v2

    .line 164
    if-eqz v0, :cond_24

    .line 165
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    .line 164
    :goto_23
    return v0

    .line 165
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 570
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 596
    :goto_6
    return-void

    .line 575
    :cond_7
    :try_start_7
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 577
    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 578
    const/4 v0, 0x0

    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_70

    iget-boolean v2, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_6b

    if-eqz v2, :cond_70

    .line 579
    aget-object v2, v1, v0

    .line 580
    :try_start_1c
    iget-object v3, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 581
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    iget-boolean v3, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    if-nez v3, :cond_42

    .line 582
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 583
    :cond_42
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 584
    const-class v3, Lorg/apache/commons/lang3/builder/EqualsExclude;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_6b

    move-result v3

    if-nez v3, :cond_5f

    .line 586
    :try_start_54
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_5f} :catch_62
    .catchall {:try_start_54 .. :try_end_5f} :catchall_6b

    .line 578
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 587
    :catch_62
    move-exception v0

    .line 590
    :try_start_63
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_6b

    .line 595
    :catchall_6b
    move-exception v0

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    throw v0

    .line 595
    :cond_70
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 325
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 5

    .line 378
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 453
    if-ne p0, p1, :cond_4

    .line 454
    const/4 v0, 0x1

    .line 459
    :goto_3
    return v0

    .line 456
    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    .line 457
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 459
    :cond_a
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    .line 460
    invoke-virtual {v0, p5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setExcludeFields([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    .line 461
    invoke-virtual {v0, p3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setReflectUpToClass(Ljava/lang/Class;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    .line 462
    invoke-virtual {v0, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setTestTransients(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    .line 463
    invoke-virtual {v0, p4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setTestRecursive(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    .line 464
    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_3
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 412
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 5

    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 178
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 179
    if-nez v0, :cond_10

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 181
    sget-object v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 183
    :cond_10
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method private static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 200
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_18

    .line 202
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 203
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 205
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 208
    :cond_18
    return-void
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 760
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 764
    :goto_4
    return-object p0

    .line 763
    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 745
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 749
    :goto_4
    return-object p0

    .line 748
    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 10

    .line 781
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 784
    :goto_4
    return-object p0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_4
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 5

    .line 801
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 804
    :goto_4
    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_4
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 715
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 719
    :goto_4
    return-object p0

    .line 718
    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 700
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 704
    :goto_4
    return-object p0

    .line 703
    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 5

    .line 630
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 651
    :cond_4
    :goto_4
    return-object p0

    .line 633
    :cond_5
    if-eq p1, p2, :cond_4

    .line 636
    if-eqz p1, :cond_b

    if-nez p2, :cond_10

    .line 637
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_4

    .line 640
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 644
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->appendArray(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 646
    :cond_1e
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    if-eqz v1, :cond_2c

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 647
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_4

    .line 649
    :cond_2c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 730
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 734
    :goto_4
    return-object p0

    .line 733
    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 815
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 819
    :goto_4
    return-object p0

    .line 818
    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    const/4 v0, 0x0

    .line 991
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 1008
    :cond_5
    :goto_5
    return-object p0

    .line 994
    :cond_6
    if-eq p1, p2, :cond_5

    .line 997
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 998
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1001
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 1002
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1005
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 1006
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    const/4 v0, 0x0

    .line 960
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 977
    :cond_5
    :goto_5
    return-object p0

    .line 963
    :cond_6
    if-eq p1, p2, :cond_5

    .line 966
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 967
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 970
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 971
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 974
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 975
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 9

    const/4 v0, 0x0

    .line 1022
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 1039
    :cond_5
    :goto_5
    return-object p0

    .line 1025
    :cond_6
    if-eq p1, p2, :cond_5

    .line 1028
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 1029
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1032
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 1033
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1036
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 1037
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    const/4 v0, 0x0

    .line 1053
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 1070
    :cond_5
    :goto_5
    return-object p0

    .line 1056
    :cond_6
    if-eq p1, p2, :cond_5

    .line 1059
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 1060
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1063
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 1064
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1067
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 1068
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    const/4 v0, 0x0

    .line 898
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 915
    :cond_5
    :goto_5
    return-object p0

    .line 901
    :cond_6
    if-eq p1, p2, :cond_5

    .line 904
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 905
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 908
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 909
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 912
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 913
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 912
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 9

    const/4 v0, 0x0

    .line 867
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 884
    :cond_5
    :goto_5
    return-object p0

    .line 870
    :cond_6
    if-eq p1, p2, :cond_5

    .line 873
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 874
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 877
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 878
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 881
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 882
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    const/4 v0, 0x0

    .line 836
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 853
    :cond_5
    :goto_5
    return-object p0

    .line 839
    :cond_6
    if-eq p1, p2, :cond_5

    .line 842
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 843
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 846
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 847
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 850
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 851
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    const/4 v0, 0x0

    .line 929
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 946
    :cond_5
    :goto_5
    return-object p0

    .line 932
    :cond_6
    if-eq p1, p2, :cond_5

    .line 935
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 936
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 939
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 940
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 943
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 944
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    const/4 v0, 0x0

    .line 1084
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    .line 1101
    :cond_5
    :goto_5
    return-object p0

    .line 1087
    :cond_6
    if-eq p1, p2, :cond_5

    .line 1090
    if-eqz p1, :cond_c

    if-nez p2, :cond_10

    .line 1091
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1094
    :cond_10
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_18

    .line 1095
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_5

    .line 1098
    :cond_18
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 1099
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 3

    .line 609
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 613
    :goto_4
    return-object p0

    .line 612
    :cond_5
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_4
.end method

.method public build()Ljava/lang/Boolean;
    .registers 2

    .line 1125
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .registers 2

    .line 1111
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 8

    const/4 v4, 0x0

    .line 496
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_6

    .line 554
    :cond_5
    :goto_5
    return-object p0

    .line 499
    :cond_6
    if-eq p1, p2, :cond_5

    .line 502
    if-eqz p1, :cond_c

    if-nez p2, :cond_f

    .line 503
    :cond_c
    iput-boolean v4, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_5

    .line 511
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 512
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 514
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 516
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    move-object v0, v1

    .line 533
    :goto_24
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 534
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_5

    .line 546
    :catch_2e
    move-exception v0

    .line 552
    iput-boolean v4, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_5

    .line 520
    :cond_32
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 522
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    move-object v0, v2

    .line 524
    goto :goto_24

    .line 536
    :cond_40
    :try_start_40
    iget-object v3, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    if-eqz v3, :cond_59

    .line 537
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 538
    :cond_52
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_5

    .line 540
    :cond_59
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 541
    :goto_5c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    .line 542
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 543
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_6d} :catch_2e

    goto :goto_5c

    .line 528
    :cond_6e
    iput-boolean v4, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_5

    :cond_71
    move-object v0, v1

    goto :goto_24

    :cond_73
    move-object v0, v2

    goto :goto_24
.end method

.method public reset()V
    .registers 2

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 1144
    return-void
.end method

.method public setBypassReflectionClasses(Ljava/util/List;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Lorg/apache/commons/lang3/builder/EqualsBuilder;"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    .line 276
    return-object p0
.end method

.method protected setEquals(Z)V
    .registers 2

    .line 1135
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 1136
    return-void
.end method

.method public varargs setExcludeFields([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 297
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setReflectUpToClass(Ljava/lang/Class;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/commons/lang3/builder/EqualsBuilder;"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    .line 287
    return-object p0
.end method

.method public setTestRecursive(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 257
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    .line 258
    return-object p0
.end method

.method public setTestTransients(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 243
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    .line 244
    return-object p0
.end method
