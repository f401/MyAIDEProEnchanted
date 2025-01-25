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
        "Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry<",
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
            "Ljava/util/Set<",
            "Lorg/codehaus/groovy/reflection/ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static gn:Lorg/codehaus/groovy/util/ReferenceBundle;

.field private static final tp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
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
            "Lorg/codehaus/groovy/util/ManagedReference<",
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

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;-><init>(Lorg/codehaus/groovy/reflection/ClassInfo$1;)V

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->tp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>(Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Class;I)V
    .registers 5

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Object;I)V

    new-instance p1, Lorg/codehaus/groovy/util/LockableObject;

    invoke-direct {p1}, Lorg/codehaus/groovy/util/LockableObject;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->J0:Lorg/codehaus/groovy/util/LockableObject;

    sget-object p1, Lorg/codehaus/groovy/reflection/CachedClass;->DW:[Lgroovy/lang/MetaMethod;

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->aM:[Lgroovy/lang/MetaMethod;

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->j3:[Lgroovy/lang/MetaMethod;

    iput p3, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->J8:I

    new-instance p1, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;

    sget-object p2, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {p1, p2, p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->EQ:Lorg/codehaus/groovy/reflection/ClassInfo$LazyCachedClassRef;

    new-instance p1, Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;

    sget-object p2, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {p1, p2, p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->we:Lorg/codehaus/groovy/reflection/ClassInfo$LazyClassLoaderRef;

    return-void
.end method

.method private static DW(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 5

    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_a

    new-instance p0, Lorg/codehaus/groovy/reflection/stdclasses/ObjectCachedClass;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/ObjectCachedClass;-><init>(Lorg/codehaus/groovy/reflection/ClassInfo;)V

    return-object p0

    :cond_a
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_14

    new-instance p0, Lorg/codehaus/groovy/reflection/stdclasses/StringCachedClass;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/StringCachedClass;-><init>(Lorg/codehaus/groovy/reflection/ClassInfo;)V

    return-object p0

    :cond_14
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_71

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_71

    :cond_25
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_38

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/ArrayCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/ArrayCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_12d

    :cond_38
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_43

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto/16 :goto_12d

    :cond_43
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_4e

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto/16 :goto_12d

    :cond_4e
    const-class v0, Lgroovy/lang/Closure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedClosureClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_12d

    :cond_5d
    invoke-static {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->DW(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_12d

    :cond_6a
    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/CachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_12d

    :cond_71
    :goto_71
    const-class v0, Ljava/lang/Number;

    if-ne p0, v0, :cond_7c

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/NumberCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/NumberCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_12d

    :cond_7c
    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_122

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_86

    goto/16 :goto_122

    :cond_86
    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_116

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_90

    goto/16 :goto_116

    :cond_90
    const-class v0, Ljava/math/BigDecimal;

    if-ne p0, v0, :cond_9b

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/BigDecimalCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/BigDecimalCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto/16 :goto_12d

    :cond_9b
    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_10a

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a5

    goto/16 :goto_10a

    :cond_a5
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_fe

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_ae

    goto :goto_fe

    :cond_ae
    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_f2

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_b7

    goto :goto_f2

    :cond_b7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_c2

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;

    invoke-direct {v0, p0, p1, v2}, Lorg/codehaus/groovy/reflection/stdclasses/BooleanCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto/16 :goto_12d

    :cond_c2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_cd

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;

    invoke-direct {v0, p0, p1, v2}, Lorg/codehaus/groovy/reflection/stdclasses/CharacterCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto/16 :goto_12d

    :cond_cd
    const-class v0, Ljava/math/BigInteger;

    if-ne p0, v0, :cond_d7

    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/BigIntegerCachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/stdclasses/BigIntegerCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_12d

    :cond_d7
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_e6

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e0

    goto :goto_e6

    :cond_e0
    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/groovy/reflection/CachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V

    goto :goto_12d

    :cond_e6
    :goto_e6
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_eb

    goto :goto_ec

    :cond_eb
    const/4 v1, 0x0

    :goto_ec
    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/ByteCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/ByteCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto :goto_12d

    :cond_f2
    :goto_f2
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_f7

    goto :goto_f8

    :cond_f7
    const/4 v1, 0x0

    :goto_f8
    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/ShortCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/ShortCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto :goto_12d

    :cond_fe
    :goto_fe
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_103

    goto :goto_104

    :cond_103
    const/4 v1, 0x0

    :goto_104
    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/FloatCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/FloatCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto :goto_12d

    :cond_10a
    :goto_10a
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_10f

    goto :goto_110

    :cond_10f
    const/4 v1, 0x0

    :goto_110
    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/LongCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/LongCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto :goto_12d

    :cond_116
    :goto_116
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_11b

    goto :goto_11c

    :cond_11b
    const/4 v1, 0x0

    :goto_11c
    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/DoubleCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/DoubleCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    goto :goto_12d

    :cond_122
    :goto_122
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_127

    goto :goto_128

    :cond_127
    const/4 v1, 0x0

    :goto_128
    new-instance v0, Lorg/codehaus/groovy/reflection/stdclasses/IntegerCachedClass;

    invoke-direct {v0, p0, p1, v1}, Lorg/codehaus/groovy/reflection/stdclasses/IntegerCachedClass;-><init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;Z)V

    :goto_12d
    return-object v0
.end method

.method private static DW(Ljava/lang/Class;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lorg/codehaus/groovy/reflection/stdclasses/CachedSAMClass;->j6(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private FH(Lgroovy/lang/MetaClass;)Z
    .registers 3

    invoke-static {}, Lgroovy/lang/GroovySystem;->getMetaClassRegistry()Lgroovy/lang/MetaClassRegistry;

    move-result-object v0

    invoke-interface {v0}, Lgroovy/lang/MetaClassRegistry;->getMetaClassCreationHandler()Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lgroovy/lang/MetaClass;Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;)Z

    move-result p1

    return p1
.end method

.method private static J0()Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->tp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;->get()Ljava/lang/ref/SoftReference;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;

    :cond_1a
    return-object v1
.end method

.method private J8()Lgroovy/lang/MetaClass;
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->u7()Lgroovy/lang/MetaClass;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->tp()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-static {}, Lgroovy/lang/GroovySystem;->getMetaClassRegistry()Lgroovy/lang/MetaClassRegistry;

    move-result-object v1

    invoke-interface {v1}, Lgroovy/lang/MetaClassRegistry;->getMetaClassCreationHandler()Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lgroovy/lang/MetaClass;Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;->create(Ljava/lang/Class;Lgroovy/lang/MetaClassRegistry;)Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0}, Lgroovy/lang/MetaClass;->initialize()V

    invoke-static {}, Lgroovy/lang/GroovySystem;->isKeepJavaMetaClasses()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lgroovy/lang/MetaClass;)V

    goto :goto_34

    :cond_31
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->DW(Lgroovy/lang/MetaClass;)V

    :goto_34
    return-object v0
.end method

.method static synthetic j6(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 2

    invoke-static {p0, p1}, Lorg/codehaus/groovy/reflection/ClassInfo;->DW(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;
    .registers 3

    invoke-static {}, Lorg/codehaus/groovy/reflection/ClassInfo;->J0()Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->u7:Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->j6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object p0

    check-cast p0, Lorg/codehaus/groovy/reflection/ClassInfo;

    return-object p0
.end method

.method private j6(Lorg/codehaus/groovy/util/ManagedReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/util/ManagedReference<",
            "Lgroovy/lang/MetaClass;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->XL:Lorg/codehaus/groovy/util/ManagedReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->FH()V

    :cond_7
    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->XL:Lorg/codehaus/groovy/util/ManagedReference;

    return-void
.end method

.method private j6(Lgroovy/lang/MetaClass;Lgroovy/lang/MetaClassRegistry$MetaClassCreationHandle;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of p2, p2, Lgroovy/lang/ExpandoMetaClassCreationHandle;

    instance-of p1, p1, Lgroovy/lang/ExpandoMetaClass;

    if-eqz p2, :cond_c

    if-eqz p1, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method static synthetic v5()Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;
    .registers 1

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->u7:Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;

    return-object v0
.end method


# virtual methods
.method public DW(Lgroovy/lang/MetaClass;)V
    .registers 4

    iget v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    if-eqz p1, :cond_12

    new-instance v0, Lorg/codehaus/groovy/util/ManagedReference;

    sget-object v1, Lorg/codehaus/groovy/reflection/ClassInfo;->VH:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/groovy/util/ManagedReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Ljava/lang/Object;)V

    :cond_12
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

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->EQ()V

    :try_start_a
    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->J8()Lgroovy/lang/MetaClass;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->we()V

    return-object v0

    :catchall_12
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

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo;->tp()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->FH(Lgroovy/lang/MetaClass;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Lgroovy/lang/MetaClass;)V
    .registers 5

    iget v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->Ws:I

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    instance-of v2, v0, Lgroovy/lang/ExpandoMetaClass;

    if-eqz v2, :cond_16

    check-cast v0, Lgroovy/lang/ExpandoMetaClass;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lgroovy/lang/ExpandoMetaClass;->inRegistry:Z

    sget-object v0, Lorg/codehaus/groovy/reflection/ClassInfo;->Zo:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_16
    iput-object p1, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->QX:Lgroovy/lang/MetaClass;

    instance-of v0, p1, Lgroovy/lang/ExpandoMetaClass;

    if-eqz v0, :cond_25

    check-cast p1, Lgroovy/lang/ExpandoMetaClass;

    iput-boolean v1, p1, Lgroovy/lang/ExpandoMetaClass;->inRegistry:Z

    sget-object p1, Lorg/codehaus/groovy/reflection/ClassInfo;->Zo:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Lorg/codehaus/groovy/util/ManagedReference;)V

    return-void
.end method

.method public tp()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo;->XL:Lorg/codehaus/groovy/util/ManagedReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovy/lang/MetaClass;

    :goto_c
    return-object v0
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
