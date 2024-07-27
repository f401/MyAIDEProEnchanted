.class public Lorg/codehaus/groovy/ast/ClassHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/ast/ClassHelper$ClassHelperCache;
    }
.end annotation


# static fields
.field public static final BT:Lorg/codehaus/groovy/ast/ClassNode;

.field private static final DW:[Ljava/lang/String;

.field public static final EQ:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final FH:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final Hw:Lorg/codehaus/groovy/ast/ClassNode;

.field private static I:[Lorg/codehaus/groovy/ast/ClassNode;

.field public static final J0:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final J8:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final KD:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final Mr:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final Mz:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final P8:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final QX:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final SI:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final Sf:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final U2:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final VH:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final Ws:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final XL:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final Zo:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final a8:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final aM:Lorg/codehaus/groovy/ast/ClassNode;

.field protected static final ca:[Lorg/codehaus/groovy/ast/ClassNode;

.field public static final cb:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final cn:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final dx:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final ef:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final ei:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final er:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final g3:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final gW:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final gn:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final j3:Lorg/codehaus/groovy/ast/ClassNode;

.field private static final j6:[Ljava/lang/Class;

.field public static final lg:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final nw:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final rN:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final ro:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final sG:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final sh:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final tp:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final u7:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final v5:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final vJ:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final vy:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final we:Lorg/codehaus/groovy/ast/ClassNode;

.field public static final yS:Lorg/codehaus/groovy/ast/ClassNode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v7

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lgroovy/lang/Closure;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lgroovy/lang/GString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/util/Map;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lgroovy/lang/Range;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/util/regex/Pattern;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lgroovy/lang/Script;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Ljava/math/BigDecimal;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Ljava/lang/Void;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lgroovy/lang/Reference;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lgroovy/lang/MetaClass;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Ljava/util/Iterator;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lorg/codehaus/groovy/runtime/GeneratedClosure;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lgroovy/lang/GroovyObjectSupport;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->j6:[Ljava/lang/Class;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "boolean"

    aput-object v1, v0, v4

    const-string v1, "char"

    aput-object v1, v0, v6

    const-string v1, "byte"

    aput-object v1, v0, v7

    const-string v1, "short"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "void"

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->DW:[Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/Closure;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Zo:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/GString;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->u7:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/Range;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->we:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/Script;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->J0:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/Reference;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->J8:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Byte;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->lg:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Short;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->rN:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Integer;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->er:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Long;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->yS:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Character;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->gW:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Float;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->BT:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Double;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->vy:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->nw:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Number;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->SI:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->KD:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/MetaClass;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->ro:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/util/Iterator;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->cn:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Ljava/lang/Comparable;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->cb:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lorg/codehaus/groovy/runtime/GeneratedClosure;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->dx:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/GroovyObjectSupport;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/GroovyObject;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->ef:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v0, Lgroovy/lang/GroovyInterceptable;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Sf:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v1, "java.lang.Enum"

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, v1, v5, v2}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->vJ:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v1, "java.lang.annotation.Annotation"

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, v1, v5, v2}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->g3:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v1, "java.lang.annotation.ElementType"

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->vJ:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, v1, v5, v2}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Mz:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->vJ:Lorg/codehaus/groovy/ast/ClassNode;

    iput-boolean v5, v0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->g3:Lorg/codehaus/groovy/ast/ClassNode;

    iput-boolean v5, v1, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    const/16 v2, 0x28

    new-array v2, v2, [Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v3, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v3, v2, v5

    sget-object v3, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v3, v2, v4

    sget-object v3, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v3, v2, v6

    sget-object v3, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v3, v2, v7

    sget-object v3, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v3, v2, v8

    const/4 v3, 0x5

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->Zo:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->u7:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->J0:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->we:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->gW:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->lg:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->rN:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->er:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x17

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->yS:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x18

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->vy:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x19

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->BT:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->nw:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->SI:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->KD:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->J8:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x20

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->ro:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x21

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->cn:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x22

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->dx:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x23

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x24

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->ef:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x25

    sget-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->Sf:Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v4, v2, v3

    const/16 v3, 0x26

    aput-object v0, v2, v3

    const/16 v0, 0x27

    aput-object v1, v2, v0

    sput-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->I:[Lorg/codehaus/groovy/ast/ClassNode;

    new-array v0, v5, [Lorg/codehaus/groovy/ast/ClassNode;

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->ca:[Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper$ClassHelperCache;->j6:Lorg/codehaus/groovy/util/ManagedConcurrentMap;

    invoke-virtual {v0, p0}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper$ClassHelperCache;->j6:Lorg/codehaus/groovy/util/ManagedConcurrentMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6()Lorg/codehaus/groovy/vmplugin/VMPlugin;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/codehaus/groovy/vmplugin/VMPlugin;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    :cond_1
    return-object v0
.end method

.method public static DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static DW(Lorg/codehaus/groovy/ast/ClassNode;)Z
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 5

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->j6:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->I:[Lorg/codehaus/groovy/ast/ClassNode;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    goto :goto_1
.end method

.method public static j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v1, 0x1

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, p0, v1, v2}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    return-object v0
.end method

.method public static j6(Lorg/codehaus/groovy/ast/ClassNode;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Lorg/codehaus/groovy/ast/ClassNode;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->lg:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_4

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->gW:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_5

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->rN:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_5
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->er:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_6
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_7

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->yS:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_7
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_8

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->BT:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_8
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_9

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->vy:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0

    :cond_9
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->KD:Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0
.end method
