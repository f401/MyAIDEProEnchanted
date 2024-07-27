.class public Lorg/codehaus/groovy/reflection/ClassInfo;
.super Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;,
        Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;,
        Lorg/codehaus/groovy/reflection/ClassInfo$DebugRef;,
        Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;,
        Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;,
        Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;,
        Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry",
        "<",
        "Ljava/lang/Class;",
        "Lorg/codehaus/groovy/reflection/ClassInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static VH:Lorg/codehaus/groovy/util/ReferenceBundle;

.field private static final Zo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/codehaus/groovy/reflection/ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static gn:Lorg/codehaus/groovy/util/ReferenceBundle;

.field private static final tp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final u7:Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;


# instance fields
.field private final EQ:Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;

.field private final J0:Lorg/codehaus/groovy/util/LockableObject;

.field public final J8:I

.field private QX:Lgroovy/lang/MetaClass;

.field private volatile Ws:I

.field private XL:Lorg/codehaus/groovy/util/ManagedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/ManagedReference",
            "<",
            "Lgroovy/lang/MetaClass;",
            ">;"
        }
    .end annotation
.end field

.field aM:[Lgroovy/lang/MetaMethod;

.field j3:[Lgroovy/lang/MetaMethod;

.field private final we:Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->Zo:Ljava/util/Set;

    invoke-static {}, Lorg/codehaus/groovy/util/ReferenceBundle;->DW()Lorg/codehaus/groovy/util/ReferenceBundle;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-static {}, Lorg/codehaus/groovy/util/ReferenceBundle;->Hw()Lorg/codehaus/groovy/util/ReferenceBundle;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->gn:Lorg/codehaus/groovy/util/ReferenceBundle;

    new-instance v0, Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;

    sget-object v1, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    sput-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->u7:Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;

    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;

    invoke-direct {v1, v2}, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;-><init>(Lorg/codehaus/groovy/reflection/ClassInfo$1;)V

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->tp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>(Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Class;I)V
    .registers 6

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Object;I)V

    new-instance v0, Lorg/codehaus/groovy/util/LockableObject;

    invoke-direct {v0}, Lorg/codehaus/groovy/util/LockableObject;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->J0:Lorg/codehaus/groovy/util/LockableObject;

    sget-object v0, Lorg/codehaus/groovy/reflection/CachedClass;->DW:[Lgroovy/lang/MetaMethod;

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->aM:[Lgroovy/lang/MetaMethod;

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->j3:[Lgroovy/lang/MetaMethod;

    iput p3, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->J8:I

    new-instance v0, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;

    sget-object v1, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->EQ:Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;

    new-instance v0, Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;

    sget-object v1, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->we:Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;

    return-void
.end method

.method private static DW(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/ObjectCachedClass;

    invoke-direct {v0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/ObjectCachedClass;-><init>(Lorg/codehaus/groovy/reflection/ClassInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const-class v2, Ljava/lang/String;

    if-ne p0, v2, :cond_1

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/StringCachedClass;

    invoke-direct {v0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/StringCachedClass;-><init>(Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_0

    :cond_1
    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-class v2, Ljava/lang/Number;

    if-ne p0, v2, :cond_9

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/NumberCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/NumberCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_4

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/ArrayCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/ArrayCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_0

    :cond_4
    const-class v1, Ljava/lang/Boolean;

    if-ne p0, v1, :cond_5

    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const-class v1, Ljava/lang/Character;

    if-ne p0, v1, :cond_6

    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    const-class v0, Lgroovy/lang/Closure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->DW(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_0

    :cond_8
    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/CachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_0

    :cond_9
    const-class v2, Ljava/lang/Integer;

    if-eq p0, v2, :cond_a

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_b

    :cond_a
    const-class v2, Ljava/lang/Integer;

    if-ne p0, v2, :cond_1f

    :goto_1
    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/IntegerCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/IntegerCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto :goto_0

    :cond_b
    const-class v2, Ljava/lang/Double;

    if-eq p0, v2, :cond_c

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_d

    :cond_c
    const-class v2, Ljava/lang/Double;

    if-ne p0, v2, :cond_1e

    :goto_2
    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/DoubleCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/DoubleCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const-class v2, Ljava/math/BigDecimal;

    if-ne p0, v2, :cond_e

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/BigDecimalCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/BigDecimalCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_0

    :cond_e
    const-class v2, Ljava/lang/Long;

    if-eq p0, v2, :cond_f

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_10

    :cond_f
    const-class v2, Ljava/lang/Long;

    if-ne p0, v2, :cond_1d

    :goto_3
    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/LongCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/LongCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    const-class v2, Ljava/lang/Float;

    if-eq p0, v2, :cond_11

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_12

    :cond_11
    const-class v2, Ljava/lang/Float;

    if-ne p0, v2, :cond_1c

    :goto_4
    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/FloatCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/FloatCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_12
    const-class v2, Ljava/lang/Short;

    if-eq p0, v2, :cond_13

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_14

    :cond_13
    const-class v2, Ljava/lang/Short;

    if-ne p0, v2, :cond_1b

    :goto_5
    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/ShortCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/ShortCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_14
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_15

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto/16 :goto_0

    :cond_15
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_16

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto/16 :goto_0

    :cond_16
    const-class v2, Ljava/math/BigInteger;

    if-ne p0, v2, :cond_17

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/BigIntegerCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/BigIntegerCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_0

    :cond_17
    const-class v2, Ljava/lang/Byte;

    if-eq p0, v2, :cond_18

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_19

    :cond_18
    const-class v2, Ljava/lang/Byte;

    if-ne p0, v2, :cond_1a

    :goto_6
    new-instance v1, Lorg/codehaus/groovy/reflection/stdclasses/ByteCachedClass;

    invoke-direct {v1, p0, p1, v0}, Lorg/codehaus/groovy/reflection/stdclasses/ByteCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_19
    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/CachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_0

    :cond_1a
    move v0, v1

    goto :goto_6

    :cond_1b
    move v0, v1

    goto :goto_5

    :cond_1c
    move v0, v1

    goto :goto_4

    :cond_1d
    move v0, v1

    goto :goto_3

    :cond_1e
    move v0, v1

    goto/16 :goto_2

    :cond_1f
    move v0, v1

    goto/16 :goto_1
.end method

.method private static DW(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private FH(Lgroovy/lang/MetaClass;)Z
    .registers 3

    invoke-static {}, Lgroovy/lang/GroovySystem;->getMetaClassRegistry()Lgroovy/lang/MetaClassRegistry;

    move-result-object v0

    invoke-interface {v0}, Lgroovy/lang/MetaClassRegistry;->getMetaClassCreationHandler()Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lgroovy/lang/MetaClass;Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;)Z

    move-result v0

    return v0
.end method

.method private static J0()Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->tp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;->get()Ljava/lang/ref/SoftReference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private J8()Lgroovy/lang/MetaClass;
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->u7()Lgroovy/lang/MetaClass;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->tp()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-static {}, Lgroovy/lang/GroovySystem;->getMetaClassRegistry()Lgroovy/lang/MetaClassRegistry;

    move-result-object v1

    invoke-interface {v1}, Lgroovy/lang/MetaClassRegistry;->getMetaClassCreationHandler()Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lgroovy/lang/MetaClass;Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;->create(Ljava/lang/Class;Lgroovy/lang/MetaClassRegistry;)Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0}, Lgroovy/lang/MetaClass;->initialize()V

    invoke-static {}, Lgroovy/lang/GroovySystem;->isKeepJavaMetaClasses()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lgroovy/lang/MetaClass;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->DW(Lgroovy/lang/MetaClass;)V

    goto :goto_0
.end method

.method static synthetic j6(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 3

    invoke-static {p0, p1}, Lorg/codehaus/groovy/reflection/ClassInfo;->DW(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;
    .registers 3

    invoke-static {}, Lorg/codehaus/groovy/reflection/ClassInfo;->J0()Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->u7:Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->j6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/ClassInfo;

    goto :goto_0
.end method

.method private j6(Lorg/codehaus/groovy/util/ManagedReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/util/ManagedReference",
            "<",
            "Lgroovy/lang/MetaClass;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->XL:Lorg/codehaus/groovy/util/ManagedReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->FH()V

    :cond_0
    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->XL:Lorg/codehaus/groovy/util/ManagedReference;

    return-void
.end method

.method private j6(Lgroovy/lang/MetaClass;Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p2, Lgroovy/lang/ExpandoMetaClassCreationHandle;

    instance-of v2, p1, Lgroovy/lang/ExpandoMetaClass;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic v5()Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;
    .registers 1

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->u7:Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;

    return-object v0
.end method


# virtual methods
.method public DW(Lgroovy/lang/MetaClass;)V
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/codehaus/groovy/util/ManagedReference;

    sget-object v1, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/groovy/util/ManagedReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lorg/codehaus/groovy/util/ManagedReference;)V

    return-void
.end method

.method public EQ()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->J0:Lorg/codehaus/groovy/util/LockableObject;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LockableObject;->j6()V

    return-void
.end method

.method public final VH()Lgroovy/lang/MetaClass;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->gn()Lgroovy/lang/MetaClass;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->EQ()V

    :try_start_0
    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->J8()Lgroovy/lang/MetaClass;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->we()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->we()V

    throw v0
.end method

.method public Zo()Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->EQ:Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LazyReference;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/CachedClass;

    return-object v0
.end method

.method public gn()Lgroovy/lang/MetaClass;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->tp()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->FH(Lgroovy/lang/MetaClass;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Lgroovy/lang/MetaClass;)V
    .registers 4

    iget v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    instance-of v1, v0, Lgroovy/lang/ExpandoMetaClass;

    if-eqz v1, :cond_0

    check-cast v0, Lgroovy/lang/ExpandoMetaClass;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgroovy/lang/ExpandoMetaClass;->inRegistry:Z

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->Zo:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    instance-of v0, p1, Lgroovy/lang/ExpandoMetaClass;

    if-eqz v0, :cond_1

    check-cast p1, Lgroovy/lang/ExpandoMetaClass;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lgroovy/lang/ExpandoMetaClass;->inRegistry:Z

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->Zo:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lorg/codehaus/groovy/util/ManagedReference;)V

    return-void
.end method

.method public tp()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->XL:Lorg/codehaus/groovy/util/ManagedReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovy/lang/MetaClass;

    goto :goto_0
.end method

.method public u7()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public we()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->J0:Lorg/codehaus/groovy/util/LockableObject;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-void
.end method
