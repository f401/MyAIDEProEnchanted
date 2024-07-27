.class public Lcom/sun/tools/javac/code/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Flags$Flag;
    }
.end annotation


# static fields
.field public static final ABSTRACT:I = 0x400

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACYCLIC:I = 0x40000000

.field public static final ACYCLIC_ANN:J = 0x800000000L

.field public static final ANNOTATION:I = 0x2000

.field public static final ANONCONSTR:I = 0x20000000

.field public static final AccessFlags:I = 0x7

.field public static final BLOCK:I = 0x100000

.field public static final BRIDGE:J = 0x80000000L

.field public static final CLASH:J = 0x80000000000L

.field public static final CLASS_SEEN:I = 0x2000000

.field public static final COMPOUND:I = 0x1000000

.field public static final ClassFlags:I = 0x7e11

.field public static final ConstructorFlags:I = 0x7

.field public static final DEPRECATED:I = 0x20000

.field public static final EFFECTIVELY_FINAL:J = 0x40000000000L

.field public static final ENUM:I = 0x4000

.field public static final EXISTS:I = 0x800000

.field public static final FINAL:I = 0x10

.field public static final GENERATEDCONSTR:J = 0x1000000000L

.field public static final HASINIT:I = 0x40000

.field public static final HYPOTHETICAL:J = 0x2000000000L

.field public static final INTERFACE:I = 0x200

.field public static final IPROXY:I = 0x200000

.field public static final InterfaceMethodFlags:I = 0x401

.field public static final InterfaceVarFlags:I = 0x19

.field public static final LOCKED:I = 0x8000000

.field public static final LocalClassFlags:I = 0x5c10

.field public static final LocalVarFlags:J = 0x200000010L

.field public static final MemberClassFlags:I = 0x5e17

.field public static final MethodFlags:I = 0xd3f

.field public static final ModifierFlags:I = 0xdff

.field public static final NATIVE:I = 0x100

.field public static final NOOUTERTHIS:I = 0x400000

.field public static final OVERRIDE_BRIDGE:J = 0x20000000000L

.field public static final PARAMETER:J = 0x200000000L

.field public static final POLYMORPHIC_SIGNATURE:J = 0x10000000000L

.field public static final PRIVATE:I = 0x2

.field public static final PROPRIETARY:J = 0x4000000000L

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final SOURCE_SEEN:I = 0x4000000

.field public static final STATIC:I = 0x8

.field public static final STRICTFP:I = 0x800

.field public static final SYNCHRONIZED:I = 0x20

.field public static final SYNTHETIC:I = 0x1000

.field public static final StandardFlags:I = 0xfff

.field public static final TRANSIENT:I = 0x80

.field public static final UNATTRIBUTED:I = 0x10000000

.field public static final UNION:J = 0x8000000000L

.field public static final VARARGS:J = 0x400000000L

.field public static final VOLATILE:I = 0x40

.field public static final VarFlags:I = 0x40df

.field private static modifierSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 300
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/sun/tools/javac/code/Flags;->modifierSets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFlagSet(J)Ljava/util/EnumSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/code/Flags$Flag;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    .line 57
    const-class v0, Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 58
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->PUBLIC:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->PRIVATE:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->PROTECTED:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->STATIC:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_3
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->FINAL:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->SYNCHRONIZED:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_5
    const-wide/16 v2, 0x40

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->VOLATILE:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_6
    const-wide/16 v2, 0x80

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->TRANSIENT:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_7
    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->NATIVE:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_8
    const-wide/16 v2, 0x200

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->INTERFACE:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_9
    const-wide/16 v2, 0x400

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->ABSTRACT:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_a
    const-wide/16 v2, 0x800

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->STRICTFP:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_b
    const-wide v2, 0x80000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->BRIDGE:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_c
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->SYNTHETIC:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_d
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->DEPRECATED:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_e
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->HASINIT:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_f
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_10

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->ENUM:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_10
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_11

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->IPROXY:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_11
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_12

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->NOOUTERTHIS:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_12
    const-wide/32 v2, 0x800000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->EXISTS:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_13
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_14

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->COMPOUND:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_14
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->CLASS_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_15
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_16

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->SOURCE_SEEN:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_16
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->LOCKED:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_17
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_18

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->UNATTRIBUTED:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_18
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_19

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->ANONCONSTR:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_19
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->ACYCLIC:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1a
    const-wide v2, 0x200000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->PARAMETER:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1b
    const-wide v2, 0x400000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/sun/tools/javac/code/Flags$Flag;->VARARGS:Lcom/sun/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1c
    return-object v0
.end method

.method public static asModifierSet(J)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    .line 278
    sget-object v0, Lcom/sun/tools/javac/code/Flags;->modifierSets:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 279
    if-nez v0, :cond_b

    .line 280
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 281
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    sget-object v1, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_2
    const-wide/16 v2, 0x400

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_3
    const-wide/16 v2, 0x8

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_5
    const-wide/16 v2, 0x80

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    sget-object v1, Ljavax/lang/model/element/Modifier;->TRANSIENT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_6
    const-wide/16 v2, 0x40

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_7

    sget-object v1, Ljavax/lang/model/element/Modifier;->VOLATILE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_7
    const-wide/16 v2, 0x20

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_8

    .line 290
    sget-object v1, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_8
    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_9

    sget-object v1, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_9
    const-wide/16 v2, 0x800

    and-long/2addr v2, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_a

    sget-object v1, Ljavax/lang/model/element/Modifier;->STRICTFP:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 294
    sget-object v1, Lcom/sun/tools/javac/code/Flags;->modifierSets:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_b
    return-object v0
.end method

.method public static isConstant(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Z
    .registers 2

    .line 312
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnum(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 5

    .line 308
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatic(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 5

    .line 304
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 6

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v0, ""

    .line 48
    invoke-static {p0, p1}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Flags$Flag;

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, " "

    move-object v1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
