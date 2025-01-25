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
    .registers 60

    const/16 v0, 0x24

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-class v2, Lgroovy/lang/Closure;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-class v2, Lgroovy/lang/GString;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-class v2, Ljava/util/List;

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-class v2, Ljava/util/Map;

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-class v2, Lgroovy/lang/Range;

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-class v2, Ljava/util/regex/Pattern;

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-class v2, Lgroovy/lang/Script;

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-class v2, Ljava/lang/String;

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-class v2, Ljava/lang/Boolean;

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-class v2, Ljava/lang/Character;

    const/16 v22, 0x13

    aput-object v2, v1, v22

    const-class v2, Ljava/lang/Byte;

    const/16 v23, 0x14

    aput-object v2, v1, v23

    const/16 v2, 0x15

    const-class v24, Ljava/lang/Short;

    aput-object v24, v1, v2

    const/16 v2, 0x16

    const-class v24, Ljava/lang/Integer;

    aput-object v24, v1, v2

    const/16 v2, 0x17

    const-class v24, Ljava/lang/Long;

    aput-object v24, v1, v2

    const/16 v2, 0x18

    const-class v24, Ljava/lang/Double;

    aput-object v24, v1, v2

    const/16 v2, 0x19

    const-class v24, Ljava/lang/Float;

    aput-object v24, v1, v2

    const/16 v2, 0x1a

    const-class v24, Ljava/math/BigDecimal;

    aput-object v24, v1, v2

    const/16 v2, 0x1b

    const-class v24, Ljava/math/BigInteger;

    aput-object v24, v1, v2

    const/16 v2, 0x1c

    const-class v24, Ljava/lang/Number;

    aput-object v24, v1, v2

    const/16 v2, 0x1d

    const-class v24, Ljava/lang/Void;

    aput-object v24, v1, v2

    const/16 v2, 0x1e

    const-class v24, Lgroovy/lang/Reference;

    aput-object v24, v1, v2

    const/16 v2, 0x1f

    const-class v24, Ljava/lang/Class;

    aput-object v24, v1, v2

    const/16 v2, 0x20

    const-class v24, Lgroovy/lang/MetaClass;

    aput-object v24, v1, v2

    const/16 v2, 0x21

    const-class v24, Ljava/util/Iterator;

    aput-object v24, v1, v2

    const/16 v2, 0x22

    const-class v24, Lorg/codehaus/groovy/runtime/GeneratedClosure;

    aput-object v24, v1, v2

    const/16 v2, 0x23

    const-class v24, Lgroovy/lang/GroovyObjectSupport;

    aput-object v24, v1, v2

    sput-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->j6:[Ljava/lang/Class;

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    const-string v2, "boolean"

    aput-object v2, v1, v4

    const-string v2, "char"

    aput-object v2, v1, v5

    const-string v2, "byte"

    aput-object v2, v1, v6

    const-string v2, "short"

    aput-object v2, v1, v7

    const-string v2, "int"

    aput-object v2, v1, v8

    const-string v2, "long"

    aput-object v2, v1, v9

    const-string v2, "double"

    aput-object v2, v1, v10

    const-string v2, "float"

    aput-object v2, v1, v11

    const-string v2, "void"

    aput-object v2, v1, v12

    sput-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->DW:[Ljava/lang/String;

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    sput-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    sput-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    sput-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v24, Lgroovy/lang/Closure;

    invoke-static/range {v24 .. v24}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v24

    sput-object v24, Lorg/codehaus/groovy/ast/ClassHelper;->Zo:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v25, Lgroovy/lang/GString;

    invoke-static/range {v25 .. v25}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v25

    sput-object v25, Lorg/codehaus/groovy/ast/ClassHelper;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v26, Ljava/util/List;

    invoke-static/range {v26 .. v26}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v26

    sput-object v26, Lorg/codehaus/groovy/ast/ClassHelper;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v27, Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v27

    sput-object v27, Lorg/codehaus/groovy/ast/ClassHelper;->u7:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v28, Lgroovy/lang/Range;

    invoke-static/range {v28 .. v28}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v28

    sput-object v28, Lorg/codehaus/groovy/ast/ClassHelper;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v29, Ljava/util/regex/Pattern;

    invoke-static/range {v29 .. v29}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v29

    sput-object v29, Lorg/codehaus/groovy/ast/ClassHelper;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v30

    sput-object v30, Lorg/codehaus/groovy/ast/ClassHelper;->we:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v31, Lgroovy/lang/Script;

    invoke-static/range {v31 .. v31}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v31

    sput-object v31, Lorg/codehaus/groovy/ast/ClassHelper;->J0:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v32, Lgroovy/lang/Reference;

    invoke-static/range {v32 .. v32}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v32

    sput-object v32, Lorg/codehaus/groovy/ast/ClassHelper;->J8:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v33, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v33 .. v33}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v33

    sput-object v33, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v34, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static/range {v34 .. v34}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v34

    sput-object v34, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v35, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static/range {v35 .. v35}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v35

    sput-object v35, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v36, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v36 .. v36}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v36

    sput-object v36, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v37, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static/range {v37 .. v37}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v37

    sput-object v37, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v38, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static/range {v38 .. v38}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v38

    sput-object v38, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v39, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static/range {v39 .. v39}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v39

    sput-object v39, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    sget-object v40, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static/range {v40 .. v40}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v40

    sput-object v40, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v41, Ljava/lang/Byte;

    invoke-static/range {v41 .. v41}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v41

    sput-object v41, Lorg/codehaus/groovy/ast/ClassHelper;->lg:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v42, Ljava/lang/Short;

    invoke-static/range {v42 .. v42}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v42

    sput-object v42, Lorg/codehaus/groovy/ast/ClassHelper;->rN:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v43, Ljava/lang/Integer;

    invoke-static/range {v43 .. v43}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v43

    sput-object v43, Lorg/codehaus/groovy/ast/ClassHelper;->er:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v44, Ljava/lang/Long;

    invoke-static/range {v44 .. v44}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v44

    sput-object v44, Lorg/codehaus/groovy/ast/ClassHelper;->yS:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v45, Ljava/lang/Character;

    invoke-static/range {v45 .. v45}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v45

    sput-object v45, Lorg/codehaus/groovy/ast/ClassHelper;->gW:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v46, Ljava/lang/Float;

    invoke-static/range {v46 .. v46}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v46

    sput-object v46, Lorg/codehaus/groovy/ast/ClassHelper;->BT:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v47, Ljava/lang/Double;

    invoke-static/range {v47 .. v47}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v47

    sput-object v47, Lorg/codehaus/groovy/ast/ClassHelper;->vy:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v48, Ljava/lang/Boolean;

    invoke-static/range {v48 .. v48}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v48

    sput-object v48, Lorg/codehaus/groovy/ast/ClassHelper;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v49, Ljava/math/BigInteger;

    invoke-static/range {v49 .. v49}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v49

    sput-object v49, Lorg/codehaus/groovy/ast/ClassHelper;->ei:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v50, Ljava/math/BigDecimal;

    invoke-static/range {v50 .. v50}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v50

    sput-object v50, Lorg/codehaus/groovy/ast/ClassHelper;->nw:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v51, Ljava/lang/Number;

    invoke-static/range {v51 .. v51}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v51

    sput-object v51, Lorg/codehaus/groovy/ast/ClassHelper;->SI:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v52, Ljava/lang/Void;

    invoke-static/range {v52 .. v52}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v52

    sput-object v52, Lorg/codehaus/groovy/ast/ClassHelper;->KD:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v53, Lgroovy/lang/MetaClass;

    invoke-static/range {v53 .. v53}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v53

    sput-object v53, Lorg/codehaus/groovy/ast/ClassHelper;->ro:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v54, Ljava/util/Iterator;

    invoke-static/range {v54 .. v54}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v54

    sput-object v54, Lorg/codehaus/groovy/ast/ClassHelper;->cn:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v55, Ljava/lang/Class;

    invoke-static/range {v55 .. v55}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v55

    sput-object v55, Lorg/codehaus/groovy/ast/ClassHelper;->sh:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v56, Ljava/lang/Comparable;

    invoke-static/range {v56 .. v56}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v56

    sput-object v56, Lorg/codehaus/groovy/ast/ClassHelper;->cb:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v56, Lorg/codehaus/groovy/runtime/GeneratedClosure;

    invoke-static/range {v56 .. v56}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v56

    sput-object v56, Lorg/codehaus/groovy/ast/ClassHelper;->dx:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v57, Lgroovy/lang/GroovyObjectSupport;

    invoke-static/range {v57 .. v57}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v57

    sput-object v57, Lorg/codehaus/groovy/ast/ClassHelper;->sG:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v58, Lgroovy/lang/GroovyObject;

    invoke-static/range {v58 .. v58}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v58

    sput-object v58, Lorg/codehaus/groovy/ast/ClassHelper;->ef:Lorg/codehaus/groovy/ast/ClassNode;

    const-class v59, Lgroovy/lang/GroovyInterceptable;

    invoke-static/range {v59 .. v59}, Lorg/codehaus/groovy/ast/ClassHelper;->FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v59

    sput-object v59, Lorg/codehaus/groovy/ast/ClassHelper;->Sf:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v15, "java.lang.Enum"

    invoke-direct {v0, v15, v3, v1}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->vJ:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v15, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v14, "java.lang.annotation.Annotation"

    invoke-direct {v15, v14, v3, v1}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v15, Lorg/codehaus/groovy/ast/ClassHelper;->g3:Lorg/codehaus/groovy/ast/ClassNode;

    new-instance v14, Lorg/codehaus/groovy/ast/ClassNode;

    const-string v13, "java.lang.annotation.ElementType"

    invoke-direct {v14, v13, v3, v0}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v14, Lorg/codehaus/groovy/ast/ClassHelper;->Mz:Lorg/codehaus/groovy/ast/ClassNode;

    iput-boolean v3, v0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    iput-boolean v3, v15, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    const/16 v13, 0x28

    new-array v13, v13, [Lorg/codehaus/groovy/ast/ClassNode;

    aput-object v1, v13, v3

    aput-object v33, v13, v4

    aput-object v34, v13, v5

    aput-object v35, v13, v6

    aput-object v38, v13, v7

    aput-object v36, v13, v8

    aput-object v37, v13, v9

    aput-object v39, v13, v10

    aput-object v40, v13, v11

    aput-object v2, v13, v12

    const/16 v1, 0xa

    aput-object v24, v13, v1

    const/16 v1, 0xb

    aput-object v25, v13, v1

    const/16 v1, 0xc

    aput-object v26, v13, v1

    aput-object v27, v13, v16

    aput-object v28, v13, v17

    aput-object v29, v13, v18

    aput-object v31, v13, v19

    aput-object v30, v13, v20

    aput-object v48, v13, v21

    aput-object v45, v13, v22

    aput-object v41, v13, v23

    const/16 v1, 0x15

    aput-object v42, v13, v1

    const/16 v1, 0x16

    aput-object v43, v13, v1

    const/16 v1, 0x17

    aput-object v44, v13, v1

    const/16 v1, 0x18

    aput-object v47, v13, v1

    const/16 v1, 0x19

    aput-object v46, v13, v1

    const/16 v1, 0x1a

    aput-object v50, v13, v1

    const/16 v1, 0x1b

    aput-object v49, v13, v1

    const/16 v1, 0x1c

    aput-object v51, v13, v1

    const/16 v1, 0x1d

    aput-object v52, v13, v1

    const/16 v1, 0x1e

    aput-object v32, v13, v1

    const/16 v1, 0x1f

    aput-object v55, v13, v1

    const/16 v1, 0x20

    aput-object v53, v13, v1

    const/16 v1, 0x21

    aput-object v54, v13, v1

    const/16 v1, 0x22

    aput-object v56, v13, v1

    const/16 v1, 0x23

    aput-object v57, v13, v1

    const/16 v1, 0x24

    aput-object v58, v13, v1

    const/16 v1, 0x25

    aput-object v59, v13, v1

    const/16 v1, 0x26

    aput-object v0, v13, v1

    const/16 v0, 0x27

    aput-object v15, v13, v0

    sput-object v13, Lorg/codehaus/groovy/ast/ClassHelper;->I:[Lorg/codehaus/groovy/ast/ClassNode;

    new-array v0, v3, [Lorg/codehaus/groovy/ast/ClassNode;

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

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v0, :cond_28

    :cond_12
    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper$ClassHelperCache;->j6:Lorg/codehaus/groovy/util/ManagedConcurrentMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/codehaus/groovy/vmplugin/VMPluginFactory;->j6()Lorg/codehaus/groovy/vmplugin/VMPlugin;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/codehaus/groovy/vmplugin/VMPlugin;->j6(Lorg/codehaus/groovy/ast/ClassNode;)V

    :cond_28
    return-object v0
.end method

.method public static DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {p0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    if-eqz p1, :cond_1a

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    return-object p0
.end method

.method public static DW(Lorg/codehaus/groovy/ast/ClassNode;)Z
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    if-eq p0, v0, :cond_27

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method public static FH(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Class;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->j6:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_f

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->I:[Lorg/codehaus/groovy/ast/ClassNode;

    aget-object p0, p0, v0

    return-object p0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/codehaus/groovy/ast/ClassHelper;->j6(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->nw()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-static {p0, p1}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Ljava/lang/Class;Z)Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 4

    new-instance v0, Lorg/codehaus/groovy/ast/ClassNode;

    const/4 v1, 0x1

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {v0, p0, v1, v2}, Lorg/codehaus/groovy/ast/ClassNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lorg/codehaus/groovy/ast/ClassNode;->yS:Z

    return-object v0
.end method

.method public static j6(Lorg/codehaus/groovy/ast/ClassNode;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    invoke-static {p0}, Lorg/codehaus/groovy/ast/ClassHelper;->DW(Lorg/codehaus/groovy/ast/ClassNode;)Z

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Ws:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_12

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->P8:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_12
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->XL:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_19

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->lg:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_19
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_20

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->gW:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_20
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Mr:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_27

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->rN:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_27
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->aM:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_2e

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->er:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_2e
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->j3:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_35

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->yS:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_35
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->a8:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_3c

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->BT:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_3c
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->U2:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_43

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->vy:Lorg/codehaus/groovy/ast/ClassNode;

    return-object p0

    :cond_43
    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p0, v0, :cond_49

    sget-object p0, Lorg/codehaus/groovy/ast/ClassHelper;->KD:Lorg/codehaus/groovy/ast/ClassNode;

    :cond_49
    return-object p0
.end method
