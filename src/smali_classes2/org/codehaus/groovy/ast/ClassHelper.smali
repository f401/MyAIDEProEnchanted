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
    .locals 47

    const/16 v4, 0x24

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-class v6, Lgroovy/lang/Closure;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-class v6, Lgroovy/lang/GString;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-class v6, Lgroovy/lang/Range;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-class v6, Ljava/util/regex/Pattern;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-class v6, Lgroovy/lang/Script;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-class v6, Ljava/lang/Boolean;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-class v6, Ljava/lang/Character;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-class v6, Ljava/lang/Byte;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-class v6, Ljava/lang/Short;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-class v6, Ljava/lang/Long;

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-class v6, Ljava/lang/Double;

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-class v6, Ljava/lang/Float;

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-class v6, Ljava/math/BigDecimal;

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-class v6, Ljava/math/BigInteger;

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-class v6, Ljava/lang/Number;

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-class v6, Ljava/lang/Void;

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-class v6, Lgroovy/lang/Reference;

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-class v6, Ljava/lang/Class;

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-class v6, Lgroovy/lang/MetaClass;

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const-class v6, Ljava/util/Iterator;

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const-class v6, Lorg/codehaus/groovy/runtime/GeneratedClosure;

    aput-object v6, v4, v5

    const/16 v5, 0x23

    const-class v6, Lgroovy/lang/GroovyObjectSupport;

    aput-object v6, v4, v5

    sput-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->j6:[Ljava/lang/Class;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "boolean"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "char"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "byte"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "short"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "int"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "long"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "double"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "float"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "void"

    aput-object v6, v4, v5

    sput-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->DW:[Ljava/lang/String;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v4

    sput-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    sput-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v5

    sput-object v5, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v6, Lgroovy/lang/Closure;

    invoke-static {v6}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v6

    sput-object v6, Lorg/codehaus/groovy/ast/ClassHelper;->Zo:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v7, Lgroovy/lang/GString;

    invoke-static {v7}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v7

    sput-object v7, Lorg/codehaus/groovy/ast/ClassHelper;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v8, Ljava/util/List;

    invoke-static {v8}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v8

    sput-object v8, Lorg/codehaus/groovy/ast/ClassHelper;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v9, Ljava/util/Map;

    invoke-static {v9}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v9

    sput-object v9, Lorg/codehaus/groovy/ast/ClassHelper;->u7:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v10, Lgroovy/lang/Range;

    invoke-static {v10}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v10

    sput-object v10, Lorg/codehaus/groovy/ast/ClassHelper;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v11, Ljava/util/regex/Pattern;

    invoke-static {v11}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v11

    sput-object v11, Lorg/codehaus/groovy/ast/ClassHelper;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v12

    sput-object v12, Lorg/codehaus/groovy/ast/ClassHelper;->we:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v13, Lgroovy/lang/Script;

    invoke-static {v13}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v13

    sput-object v13, Lorg/codehaus/groovy/ast/ClassHelper;->J0:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v14, Lgroovy/lang/Reference;

    invoke-static {v14}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v14

    sput-object v14, Lorg/codehaus/groovy/ast/ClassHelper;->J8:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v15

    sput-object v15, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v16, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v16

    sput-object v16, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v17, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v17

    sput-object v17, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v18 .. v18}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v18

    sput-object v18, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static/range {v19 .. v19}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v19

    sput-object v19, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v20, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static/range {v20 .. v20}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v20

    sput-object v20, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v21, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static/range {v21 .. v21}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v21

    sput-object v21, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v22, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static/range {v22 .. v22}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v22

    sput-object v22, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v23, Ljava/lang/Byte;

    invoke-static/range {v23 .. v23}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v23

    sput-object v23, Lorg/codehaus/groovy/ast/ClassHelper;->lg:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v24, Ljava/lang/Short;

    invoke-static/range {v24 .. v24}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v24

    sput-object v24, Lorg/codehaus/groovy/ast/ClassHelper;->rN:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v25, Ljava/lang/Integer;

    invoke-static/range {v25 .. v25}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v25

    sput-object v25, Lorg/codehaus/groovy/ast/ClassHelper;->er:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v26, Ljava/lang/Long;

    invoke-static/range {v26 .. v26}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v26

    sput-object v26, Lorg/codehaus/groovy/ast/ClassHelper;->yS:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v27, Ljava/lang/Character;

    invoke-static/range {v27 .. v27}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v27

    sput-object v27, Lorg/codehaus/groovy/ast/ClassHelper;->gW:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v28, Ljava/lang/Float;

    invoke-static/range {v28 .. v28}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v28

    sput-object v28, Lorg/codehaus/groovy/ast/ClassHelper;->BT:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v29, Ljava/lang/Double;

    invoke-static/range {v29 .. v29}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v29

    sput-object v29, Lorg/codehaus/groovy/ast/ClassHelper;->vy:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v30, Ljava/lang/Boolean;

    invoke-static/range {v30 .. v30}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v30

    sput-object v30, Lorg/codehaus/groovy/ast/ClassHelper;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v31, Ljava/math/BigInteger;

    invoke-static/range {v31 .. v31}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v31

    sput-object v31, Lorg/codehaus/groovy/ast/ClassHelper;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v32, Ljava/math/BigDecimal;

    invoke-static/range {v32 .. v32}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v32

    sput-object v32, Lorg/codehaus/groovy/ast/ClassHelper;->nw:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v33, Ljava/lang/Number;

    invoke-static/range {v33 .. v33}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v33

    sput-object v33, Lorg/codehaus/groovy/ast/ClassHelper;->SI:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v34, Ljava/lang/Void;

    invoke-static/range {v34 .. v34}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v34

    sput-object v34, Lorg/codehaus/groovy/ast/ClassHelper;->KD:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v35, Lgroovy/lang/MetaClass;

    invoke-static/range {v35 .. v35}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v35

    sput-object v35, Lorg/codehaus/groovy/ast/ClassHelper;->ro:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v36, Ljava/util/Iterator;

    invoke-static/range {v36 .. v36}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v36

    sput-object v36, Lorg/codehaus/groovy/ast/ClassHelper;->cn:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v37, Ljava/lang/Class;

    invoke-static/range {v37 .. v37}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v37

    sput-object v37, Lorg/codehaus/groovy/ast/ClassHelper;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v38, Ljava/lang/Comparable;

    invoke-static/range {v38 .. v38}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v38

    sput-object v38, Lorg/codehaus/groovy/ast/ClassHelper;->cb:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v38, Lorg/codehaus/groovy/runtime/GeneratedClosure;

    invoke-static/range {v38 .. v38}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v38

    sput-object v38, Lorg/codehaus/groovy/ast/ClassHelper;->dx:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v39, Lgroovy/lang/GroovyObjectSupport;

    invoke-static/range {v39 .. v39}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v39

    sput-object v39, Lorg/codehaus/groovy/ast/ClassHelper;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v40, Lgroovy/lang/GroovyObject;

    invoke-static/range {v40 .. v40}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v40

    sput-object v40, Lorg/codehaus/groovy/ast/ClassHelper;->ef:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v41, Lgroovy/lang/GroovyInterceptable;

    invoke-static/range {v41 .. v41}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v41

    sput-object v41, Lorg/codehaus/groovy/ast/ClassHelper;->Sf:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v42, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v43, "java.lang.Enum"

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v42, Lorg/codehaus/groovy/ast/ClassHelper;->vJ:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v43, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v44, "java.lang.annotation.Annotation"

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v43, Lorg/codehaus/groovy/ast/ClassHelper;->g3:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v44, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v45, "java.lang.annotation.ElementType"

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v46

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v44, Lorg/codehaus/groovy/ast/ClassHelper;->Mz:Lorg/codehaus/groovy/ast/ClassNode;

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    const/16 v44, 0x28

    move/from16 v0, v44

    new-array v0, v0, [Lorg/codehaus/groovy/ast/ClassNode;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v4, v44, v45

    const/4 v4, 0x1

    aput-object v15, v44, v4

    const/4 v4, 0x2

    aput-object v16, v44, v4

    const/4 v4, 0x3

    aput-object v17, v44, v4

    const/4 v4, 0x4

    aput-object v20, v44, v4

    const/4 v4, 0x5

    aput-object v18, v44, v4

    const/4 v4, 0x6

    aput-object v19, v44, v4

    const/4 v4, 0x7

    aput-object v21, v44, v4

    const/16 v4, 0x8

    aput-object v22, v44, v4

    const/16 v4, 0x9

    aput-object v5, v44, v4

    const/16 v4, 0xa

    aput-object v6, v44, v4

    const/16 v4, 0xb

    aput-object v7, v44, v4

    const/16 v4, 0xc

    aput-object v8, v44, v4

    const/16 v4, 0xd

    aput-object v9, v44, v4

    const/16 v4, 0xe

    aput-object v10, v44, v4

    const/16 v4, 0xf

    aput-object v11, v44, v4

    const/16 v4, 0x10

    aput-object v13, v44, v4

    const/16 v4, 0x11

    aput-object v12, v44, v4

    const/16 v4, 0x12

    aput-object v30, v44, v4

    const/16 v4, 0x13

    aput-object v27, v44, v4

    const/16 v4, 0x14

    aput-object v23, v44, v4

    const/16 v4, 0x15

    aput-object v24, v44, v4

    const/16 v4, 0x16

    aput-object v25, v44, v4

    const/16 v4, 0x17

    aput-object v26, v44, v4

    const/16 v4, 0x18

    aput-object v29, v44, v4

    const/16 v4, 0x19

    aput-object v28, v44, v4

    const/16 v4, 0x1a

    aput-object v32, v44, v4

    const/16 v4, 0x1b

    aput-object v31, v44, v4

    const/16 v4, 0x1c

    aput-object v33, v44, v4

    const/16 v4, 0x1d

    aput-object v34, v44, v4

    const/16 v4, 0x1e

    aput-object v14, v44, v4

    const/16 v4, 0x1f

    aput-object v37, v44, v4

    const/16 v4, 0x20

    aput-object v35, v44, v4

    const/16 v4, 0x21

    aput-object v36, v44, v4

    const/16 v4, 0x22

    aput-object v38, v44, v4

    const/16 v4, 0x23

    aput-object v39, v44, v4

    const/16 v4, 0x24

    aput-object v40, v44, v4

    const/16 v4, 0x25

    aput-object v41, v44, v4

    const/16 v4, 0x26

    aput-object v42, v44, v4

    const/16 v4, 0x27

    aput-object v43, v44, v4

    sput-object v44, Lorg/codehaus/groovy/ast/ClassHelper;->I:[Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/codehaus/groovy/ast/ClassNode;

    sput-object v4, Lorg/codehaus/groovy/ast/ClassHelper;->ca:[Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .locals 3

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
    .locals 2

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
    .locals 1

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
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;
    .locals 3

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
    .locals 3

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v1, 0x1

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, p0, v1, v2}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    return-object v0
.end method

.method public static j6(Lorg/codehaus/groovy/ast/ClassNode;)Lorg/codehaus/groovy/ast/ClassNode;
    .locals 2

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
