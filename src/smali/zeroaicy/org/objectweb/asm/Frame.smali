.class Lzeroaicy/org/objectweb/asm/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final APPEND_FRAME:I = 0xfc

.field private static final ARRAY_OF:I = 0x4000000

.field private static final BOOLEAN:I = 0x400009

.field private static final BYTE:I = 0x40000a

.field private static final CHAR:I = 0x40000b

.field static final CHOP_FRAME:I = 0xf8

.field private static final CONSTANT_KIND:I = 0x400000

.field private static final DIM_MASK:I = -0x4000000

.field private static final DIM_SHIFT:I = 0x1a

.field private static final DIM_SIZE:I = 0x6

.field private static final DOUBLE:I = 0x400003

.field private static final ELEMENT_OF:I = -0x4000000

.field private static final FLAGS_SHIFT:I = 0x14

.field private static final FLAGS_SIZE:I = 0x2

.field private static final FLOAT:I = 0x400002

.field static final FULL_FRAME:I = 0xff

.field private static final INTEGER:I = 0x400001

.field private static final ITEM_ASM_BOOLEAN:I = 0x9

.field private static final ITEM_ASM_BYTE:I = 0xa

.field private static final ITEM_ASM_CHAR:I = 0xb

.field private static final ITEM_ASM_SHORT:I = 0xc

.field static final ITEM_DOUBLE:I = 0x3

.field static final ITEM_FLOAT:I = 0x2

.field static final ITEM_INTEGER:I = 0x1

.field static final ITEM_LONG:I = 0x4

.field static final ITEM_NULL:I = 0x5

.field static final ITEM_OBJECT:I = 0x7

.field static final ITEM_TOP:I = 0x0

.field static final ITEM_UNINITIALIZED:I = 0x8

.field static final ITEM_UNINITIALIZED_THIS:I = 0x6

.field private static final KIND_MASK:I = 0x3c00000

.field private static final KIND_SHIFT:I = 0x16

.field private static final KIND_SIZE:I = 0x4

.field private static final LOCAL_KIND:I = 0x1000000

.field private static final LONG:I = 0x400004

.field private static final NULL:I = 0x400005

.field private static final REFERENCE_KIND:I = 0x800000

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7

.field private static final SHORT:I = 0x40000c

.field private static final STACK_KIND:I = 0x1400000

.field private static final TOP:I = 0x400000

.field private static final TOP_IF_LONG_OR_DOUBLE_FLAG:I = 0x100000

.field private static final UNINITIALIZED_KIND:I = 0xc00000

.field private static final UNINITIALIZED_THIS:I = 0x400006

.field private static final VALUE_MASK:I = 0xfffff

.field private static final VALUE_SIZE:I = 0x14


# instance fields
.field private initializationCount:I

.field private initializations:[I

.field private inputLocals:[I

.field private inputStack:[I

.field private outputLocals:[I

.field private outputStack:[I

.field private outputStackStart:S

.field private outputStackTop:S

.field owner:Lzeroaicy/org/objectweb/asm/Label;


# direct methods
.method constructor <init>(Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    return-void
.end method

.method private addInitializedType(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-nez v0, :cond_9

    .line 620
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    .line 622
    :cond_9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    array-length v0, v0

    .line 623
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    if-lt v1, v0, :cond_22

    .line 624
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 626
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    .line 630
    :cond_22
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    aput p1, v0, v1

    return-void
.end method

.method static getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I
    .registers 3

    .line 281
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 282
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 p1, 0x400000

    or-int/2addr p0, p1

    return p0

    .line 283
    :cond_e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 284
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lzeroaicy/org/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 285
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 287
    :cond_22
    check-cast p1, Lzeroaicy/org/objectweb/asm/Label;

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result p0

    const/high16 p1, 0xc00000

    or-int/2addr p0, p1

    return p0
.end method

.method private static getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I
    .registers 19

    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x400002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_ae

    const/high16 v5, 0x800000

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_9c

    const v7, 0x400001

    const/16 v8, 0x53

    if-eq v2, v8, :cond_9b

    const/16 v9, 0x56

    if-eq v2, v9, :cond_99

    const/16 v9, 0x49

    if-eq v2, v9, :cond_9b

    const v10, 0x400004

    const/16 v11, 0x4a

    if-eq v2, v11, :cond_98

    const/16 v12, 0x5a

    if-eq v2, v12, :cond_9b

    const v13, 0x400003

    const/16 v14, 0x5b

    if-eq v2, v14, :cond_40

    packed-switch v2, :pswitch_data_b0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_3f  #0x44
    return v13

    :cond_40
    add-int/lit8 v2, p2, 0x1

    .line 336
    :goto_42
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v14, :cond_95

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v4, :cond_8f

    if-eq v14, v6, :cond_7d

    if-eq v14, v8, :cond_79

    if-eq v14, v12, :cond_75

    if-eq v14, v9, :cond_71

    if-eq v14, v11, :cond_6d

    packed-switch v14, :pswitch_data_ba

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_61  #0x44
    const v3, 0x400003

    goto :goto_8f

    :pswitch_65  #0x43
    const v3, 0x40000b

    goto :goto_8f

    :pswitch_69  #0x42
    const v3, 0x40000a

    goto :goto_8f

    :cond_6d
    const v3, 0x400004

    goto :goto_8f

    :cond_71
    const v3, 0x400001

    goto :goto_8f

    :cond_75
    const v3, 0x400009

    goto :goto_8f

    :cond_79
    const v3, 0x40000c

    goto :goto_8f

    .line 366
    :cond_7d
    add-int/lit8 v3, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int v3, v0, v5

    :cond_8f
    :goto_8f
    sub-int v2, v2, p2

    shl-int/lit8 v0, v2, 0x1a

    or-int/2addr v0, v3

    return v0

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_98
    return v10

    :cond_99
    const/4 v0, 0x0

    return v0

    :cond_9b
    :pswitch_9b  #0x42, 0x43
    return v7

    .line 332
    :cond_9c
    add-int/lit8 v2, p2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    return v0

    :cond_ae
    return v3

    nop

    :pswitch_data_b0
    .packed-switch 0x42
        :pswitch_9b  #00000042
        :pswitch_9b  #00000043
        :pswitch_3f  #00000044
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x42
        :pswitch_69  #00000042
        :pswitch_65  #00000043
        :pswitch_61  #00000044
    .end packed-switch
.end method

.method static getAbstractTypeFromInternalName(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)I
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    const/high16 p1, 0x800000

    or-int/2addr p0, p1

    return p0
.end method

.method private getConcreteOutputType(II)I
    .registers 11

    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    const/high16 v1, 0x3c00000

    and-int/2addr v1, p1

    const/high16 v2, 0x1000000

    const v3, 0x400003

    const v4, 0x400004

    const/high16 v5, 0x100000

    const v6, 0xfffff

    const/high16 v7, 0x400000

    if-ne v1, v2, :cond_28

    .line 1129
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    and-int v1, p1, v6

    aget p2, p2, v1

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_26

    if-eq v0, v4, :cond_25

    if-ne v0, v3, :cond_26

    :cond_25
    goto :goto_27

    :cond_26
    move v7, v0

    :goto_27
    return v7

    :cond_28
    const/high16 v2, 0x1400000

    if-ne v1, v2, :cond_3e

    .line 1139
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    and-int v2, p1, v6

    sub-int/2addr p2, v2

    aget p2, v1, p2

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_3c

    if-eq v0, v4, :cond_3b

    if-ne v0, v3, :cond_3c

    :cond_3b
    goto :goto_3d

    :cond_3c
    move v7, v0

    :goto_3d
    return v7

    :cond_3e
    return p1
.end method

.method private getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I
    .registers 10

    const v0, 0x400006

    if-eq p2, v0, :cond_c

    const/high16 v1, -0x400000

    and-int/2addr v1, p2

    const/high16 v2, 0xc00000

    if-ne v1, v2, :cond_11

    :cond_c
    const/4 v1, 0x0

    .line 645
    :goto_d
    iget v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    if-lt v1, v2, :cond_12

    :cond_11
    return p2

    .line 646
    :cond_12
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    aget v2, v2, v1

    const/high16 v3, 0x3c00000

    and-int/2addr v3, v2

    const v4, 0xfffff

    and-int v5, v2, v4

    const/high16 v6, 0x1000000

    if-ne v3, v6, :cond_27

    .line 651
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v3, v3, v5

    goto :goto_31

    :cond_27
    const/high16 v6, 0x1400000

    if-ne v3, v6, :cond_35

    .line 653
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    array-length v6, v3

    sub-int/2addr v6, v5

    aget v3, v3, v6

    .line 651
    :goto_31
    const/high16 v5, -0x4000000

    and-int/2addr v2, v5

    add-int/2addr v2, v3

    .line 653
    :cond_35
    if-ne p2, v2, :cond_51

    if-ne p2, v0, :cond_42

    .line 657
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p1

    goto :goto_4d

    .line 659
    :cond_42
    and-int/2addr p2, v4

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p1

    .line 657
    :goto_4d
    const/high16 p2, 0x800000

    or-int/2addr p1, p2

    return p1

    .line 659
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private getLocal(I)I
    .registers 5

    .line 481
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    const/high16 v1, 0x1000000

    if-eqz v0, :cond_13

    array-length v2, v0

    if-lt p1, v2, :cond_a

    goto :goto_13

    .line 486
    :cond_a
    aget v2, v0, p1

    if-nez v2, :cond_12

    or-int v2, p1, v1

    .line 490
    aput v2, v0, p1

    :cond_12
    return v2

    :cond_13
    :goto_13
    or-int/2addr p1, v1

    return p1
.end method

.method private static merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z
    .registers 16

    .line 1268
    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    :cond_6
    const v2, 0x3ffffff

    and-int/2addr v2, p1

    const v3, 0x400005

    if-ne v2, v3, :cond_15

    if-ne v0, v3, :cond_12

    return v1

    :cond_12
    const p1, 0x400005

    :cond_15
    const/4 v2, 0x1

    if-nez v0, :cond_1b

    .line 1282
    aput p1, p2, p3

    return v2

    :cond_1b
    const/high16 v4, -0x4000000

    and-int v5, v0, v4

    const/high16 v6, 0x400000

    const/high16 v7, 0x3c00000

    const/high16 v8, 0x800000

    if-nez v5, :cond_3b

    and-int v9, v0, v7

    if-ne v9, v8, :cond_2c

    goto :goto_3b

    :cond_2c
    if-ne v0, v3, :cond_83

    and-int p0, p1, v4

    if-nez p0, :cond_39

    and-int p0, p1, v7

    if-ne p0, v8, :cond_37

    goto :goto_39

    :cond_37
    const/high16 p1, 0x400000

    :cond_39
    :goto_39
    move v6, p1

    goto :goto_83

    :cond_3b
    :goto_3b
    if-ne p1, v3, :cond_3e

    return v1

    .line 1291
    :cond_3e
    const/high16 v3, -0x400000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    const/high16 v11, 0x4000000

    if-ne v9, v3, :cond_63

    and-int v3, v0, v7

    if-ne v3, v8, :cond_59

    .line 1296
    const v3, 0xfffff

    and-int v5, p1, v3

    and-int/2addr v3, v0

    invoke-virtual {p0, v5, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addMergedType(II)I

    move-result p0

    and-int/2addr p1, v4

    goto :goto_5f

    .line 1304
    :cond_59
    invoke-virtual {p0, v10}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p1, v4

    sub-int/2addr p1, v11

    :goto_5f
    or-int/2addr p1, v8

    or-int v6, p0, p1

    goto :goto_83

    :cond_63
    and-int v3, p1, v4

    if-nez v3, :cond_6b

    and-int v4, p1, v7

    if-ne v4, v8, :cond_83

    :cond_6b
    if-eqz v3, :cond_71

    and-int/2addr p1, v7

    if-eq p1, v8, :cond_71

    sub-int/2addr v3, v11

    :cond_71
    if-eqz v5, :cond_78

    and-int p1, v0, v7

    if-eq p1, v8, :cond_78

    sub-int/2addr v5, v11

    .line 1319
    :cond_78
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v10}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p1, v8

    or-int v6, p0, p1

    :cond_83
    :goto_83
    if-eq v6, v0, :cond_88

    .line 1335
    aput v6, p2, p3

    return v2

    :cond_88
    return v1
.end method

.method private pop()I
    .registers 3

    .line 567
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    if-lez v0, :cond_e

    .line 568
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    aget v0, v1, v0

    return v0

    .line 571
    :cond_e
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    neg-int v0, v0

    const/high16 v1, 0x1400000

    or-int/2addr v0, v1

    return v0
.end method

.method private pop(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 581
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    if-lt v0, p1, :cond_9

    sub-int/2addr v0, p1

    int-to-short p1, v0

    .line 582
    iput-short p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    goto :goto_14

    .line 586
    :cond_9
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    const/4 p1, 0x0

    int-to-short p1, p1

    .line 587
    iput-short p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    :goto_14
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_15

    .line 599
    invoke-static {p1}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v3

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_25

    :cond_15
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_22

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1e

    goto :goto_22

    .line 603
    :cond_1e
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_25

    .line 601
    :cond_22
    :goto_22
    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    :goto_25
    return-void
.end method

.method private push(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    if-nez v0, :cond_a

    .line 525
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    .line 527
    :cond_a
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    array-length v0, v0

    .line 528
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    if-lt v1, v0, :cond_23

    .line 529
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 530
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    .line 534
    :cond_23
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    aput p1, v0, v1

    .line 537
    iget-short p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    add-int/2addr p1, v2

    int-to-short p1, p1

    .line 538
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v0, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    if-le p1, v0, :cond_3c

    .line 539
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    iput-short p1, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    :cond_3c
    return-void
.end method

.method private push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_d

    invoke-static {p2}, Lzeroaicy/org/objectweb/asm/Type;->getReturnTypeOffset(Ljava/lang/String;)I

    move-result v0

    .line 552
    :cond_d
    invoke-static {p1, p2, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_25

    .line 554
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    const p2, 0x400004

    if-eq p1, p2, :cond_20

    const p2, 0x400003

    if-ne p1, p2, :cond_25

    .line 556
    :cond_20
    const/high16 p1, 0x400000

    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    :cond_25
    return-void
.end method

.method static putAbstractType(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "I",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1a

    const/4 v1, 0x7

    const/high16 v2, 0x800000

    const/high16 v3, 0x3c00000

    const v4, 0xfffff

    if-nez v0, :cond_4e

    and-int v0, p1, v4

    and-int/2addr p1, v3

    const/high16 v3, 0x400000

    if-eq p1, v3, :cond_49

    if-eq p1, v2, :cond_34

    const/high16 v1, 0xc00000

    if-ne p1, v1, :cond_2e

    .line 1422
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p0

    iget-wide v0, p0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_c4

    .line 1425
    :cond_2e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1417
    :cond_34
    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p0

    iget p0, p0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_c4

    .line 1414
    :cond_49
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_c4

    .line 1429
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_53
    if-gtz v0, :cond_c5

    and-int v0, p1, v3

    if-ne v0, v2, :cond_6e

    .line 1434
    const/16 v0, 0x4c

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    :cond_6e
    and-int/2addr p1, v4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_ae

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9c

    packed-switch p1, :pswitch_data_ce

    .line 1465
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1450
    :pswitch_84  #0xc
    const/16 p1, 0x53

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1447
    :pswitch_8a  #0xb
    const/16 p1, 0x43

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1444
    :pswitch_90  #0xa
    const/16 p1, 0x42

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1441
    :pswitch_96  #0x9
    const/16 p1, 0x5a

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1459
    :cond_9c
    const/16 p1, 0x4a

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1462
    :cond_a2
    const/16 p1, 0x44

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1456
    :cond_a8
    const/16 p1, 0x46

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 1453
    :cond_ae
    const/16 p1, 0x49

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1468
    :goto_b3
    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p0

    iget p0, p0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_c4
    return-void

    .line 1431
    :cond_c5
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    nop

    :pswitch_data_ce
    .packed-switch 0x9
        :pswitch_96  #00000009
        :pswitch_90  #0000000a
        :pswitch_8a  #0000000b
        :pswitch_84  #0000000c
    .end packed-switch
.end method

.method private setLocal(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    if-nez v0, :cond_a

    .line 505
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    .line 507
    :cond_a
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    array-length v0, v0

    if-lt p1, v0, :cond_21

    .line 509
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 510
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    .line 514
    :cond_21
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method final accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/MethodWriter;",
            ")V"
        }
    .end annotation

    .line 1356
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x0

    .line 1360
    :goto_6
    array-length v5, v0

    const v6, 0x400003

    const v7, 0x400004

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v2, v5, :cond_5c

    .line 1371
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1374
    :goto_15
    array-length v10, v5

    if-lt v2, v10, :cond_4e

    .line 1380
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {p1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v2

    const/4 v10, 0x0

    :goto_21
    if-gtz v3, :cond_3b

    :goto_23
    if-gtz v4, :cond_29

    .line 1393
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameEnd()V

    return-void

    .line 1389
    :cond_29
    aget v0, v5, v1

    if-eq v0, v7, :cond_32

    if-ne v0, v6, :cond_30

    goto :goto_32

    :cond_30
    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v3, 0x2

    :goto_33
    add-int/2addr v1, v3

    .line 1391
    invoke-virtual {p1, v2, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitAbstractType(II)V

    add-int/2addr v2, v9

    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    .line 1383
    :cond_3b
    aget v11, v0, v10

    if-eq v11, v7, :cond_44

    if-ne v11, v6, :cond_42

    goto :goto_44

    :cond_42
    const/4 v12, 0x1

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v12, 0x2

    :goto_45
    add-int/2addr v10, v12

    .line 1385
    invoke-virtual {p1, v2, v11}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitAbstractType(II)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1375
    :cond_4e
    aget v10, v5, v2

    if-eq v10, v7, :cond_57

    if-ne v10, v6, :cond_55

    goto :goto_57

    :cond_55
    const/4 v10, 0x1

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v10, 0x2

    :goto_58
    add-int/2addr v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1361
    :cond_5c
    aget v5, v0, v2

    if-eq v5, v7, :cond_64

    if-ne v5, v6, :cond_63

    goto :goto_64

    :cond_63
    const/4 v8, 0x1

    :cond_64
    :goto_64
    add-int/2addr v2, v8

    const/high16 v6, 0x400000

    add-int/lit8 v4, v4, 0x1

    if-ne v5, v6, :cond_6c

    goto :goto_6

    :cond_6c
    add-int/2addr v3, v4

    goto :goto_5
.end method

.method final copyFrom(Lzeroaicy/org/objectweb/asm/Frame;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Frame;",
            ")V"
        }
    .end annotation

    .line 255
    iget-object v0, p1, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    .line 256
    iget-object v0, p1, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    const/4 v0, 0x0

    int-to-short v0, v0

    .line 257
    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    .line 258
    iget-object v0, p1, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    .line 259
    iget-object v0, p1, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    .line 260
    iget-short v0, p1, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    .line 261
    iget v0, p1, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    .line 262
    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    return-void
.end method

.method execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lzeroaicy/org/objectweb/asm/Symbol;",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const v5, 0x400005

    const v6, 0x400002

    const/high16 v7, 0x800000

    const v8, 0x400001

    const v9, 0x400003

    const v10, 0x400004

    const/high16 v11, 0x400000

    packed-switch v1, :pswitch_data_362

    packed-switch v1, :pswitch_data_38c

    const/high16 v12, 0x1400000

    const/high16 v13, 0x100000

    const/high16 v14, 0x1000000

    const/high16 v15, 0x3c00000

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_39a

    const/16 v5, 0x5b

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x4

    packed-switch v1, :pswitch_data_3b8

    packed-switch v1, :pswitch_data_4a6

    .line 1106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 733
    :pswitch_40  #0x12
    iget v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    packed-switch v1, :pswitch_data_4b0

    packed-switch v1, :pswitch_data_4c0

    .line 764
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 752
    :pswitch_4e  #0x8
    const-string v1, "java/lang/String"

    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 749
    :pswitch_5a  #0x7
    const-string v1, "java/lang/Class"

    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 745
    :pswitch_66  #0x6
    invoke-direct {v0, v9}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 746
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 738
    :pswitch_6e  #0x5
    invoke-direct {v0, v10}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 739
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 742
    :pswitch_76  #0x4
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 735
    :pswitch_7b  #0x3
    invoke-direct {v0, v8}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 761
    :pswitch_80  #0x11
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_361

    .line 755
    :pswitch_87  #0x10
    const-string v1, "java/lang/invoke/MethodType"

    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 758
    :pswitch_93  #0xf
    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 700
    :pswitch_9f  #0x1
    invoke-direct {v0, v5}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 768
    :pswitch_a4  #0x19
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->getLocal(I)I

    move-result v1

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 729
    :pswitch_ad  #0xe, 0xf, 0x18
    invoke-direct {v0, v9}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 730
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 724
    :pswitch_b5  #0xb, 0xc, 0xd, 0x17
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 717
    :pswitch_ba  #0x9, 0xa, 0x16
    invoke-direct {v0, v10}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 718
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 712
    :pswitch_c2  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x10, 0x11, 0x15
    invoke-direct {v0, v8}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 806
    :pswitch_c7  #0x37, 0x39
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 807
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 808
    invoke-direct {v0, v2, v1}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    .line 809
    add-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1, v11}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_361

    add-int/lit8 v1, v2, -0x1

    .line 811
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getLocal(I)I

    move-result v2

    if-eq v2, v10, :cond_ef

    if-ne v2, v9, :cond_e3

    goto :goto_ef

    :cond_e3
    and-int v3, v2, v15

    if-eq v3, v14, :cond_e9

    if-ne v3, v12, :cond_361

    .line 818
    :cond_e9
    or-int/2addr v2, v13

    invoke-direct {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_361

    .line 813
    :cond_ef
    :goto_ef
    invoke-direct {v0, v1, v11}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_361

    .line 790
    :pswitch_f4  #0x36, 0x38, 0x3a
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 791
    invoke-direct {v0, v2, v1}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_361

    add-int/lit8 v1, v2, -0x1

    .line 793
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getLocal(I)I

    move-result v2

    if-eq v2, v10, :cond_114

    if-ne v2, v9, :cond_108

    goto :goto_114

    :cond_108
    and-int v3, v2, v15

    if-eq v3, v14, :cond_10e

    if-ne v3, v12, :cond_361

    .line 800
    :cond_10e
    or-int/2addr v2, v13

    invoke-direct {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_361

    .line 795
    :cond_114
    :goto_114
    invoke-direct {v0, v1, v11}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_361

    .line 783
    :pswitch_119  #0x32
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 784
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    if-ne v1, v5, :cond_123

    goto :goto_126

    :cond_123
    const/high16 v2, 0x4000000

    sub-int/2addr v1, v2

    .line 785
    :goto_126
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1093
    :pswitch_12b  #0xc0
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1094
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    .line 1095
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_13b

    .line 1096
    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_361

    .line 1098
    :cond_13b
    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1084
    :pswitch_145  #0xbd
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1085
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    .line 1086
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_164

    .line 1087
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_361

    .line 1089
    :cond_164
    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x4800000

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1053
    :pswitch_170  #0xbc
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    packed-switch v2, :pswitch_data_4ca

    .line 1080
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1077
    :pswitch_17c  #0xb
    const v1, 0x4400004

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1068
    :pswitch_184  #0xa
    const v1, 0x4400001

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1065
    :pswitch_18c  #0x9
    const v1, 0x440000c

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1062
    :pswitch_194  #0x8
    const v1, 0x440000a

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1074
    :pswitch_19c  #0x7
    const v1, 0x4400003

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1071
    :pswitch_1a4  #0x6
    const v1, 0x4400002

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1059
    :pswitch_1ac  #0x5
    const v1, 0x440000b

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1056
    :pswitch_1b4  #0x4
    const v1, 0x4400009

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1050
    :pswitch_1bc  #0xbb
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0xc00000

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1046
    :pswitch_1ca  #0xba
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1047
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_361

    .line 1036
    :pswitch_1d6  #0xb6, 0xb7, 0xb8, 0xb9
    iget-object v2, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_1f4

    .line 1038
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_1f4

    .line 1039
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_1f4

    .line 1040
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->addInitializedType(I)V

    .line 1043
    :cond_1f4
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_361

    .line 1029
    :pswitch_1fb  #0xb5
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1030
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    goto/16 :goto_361

    .line 1025
    :pswitch_205  #0xb4
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1026
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_361

    .line 1022
    :pswitch_20f  #0xb3
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    goto/16 :goto_361

    .line 1019
    :pswitch_216  #0xb2
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_361

    .line 1017
    :pswitch_21d  #0xa8, 0xa9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1012
    :pswitch_225  #0x94, 0x97, 0x98
    invoke-direct {v0, v14}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1013
    invoke-direct {v0, v8}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    :pswitch_22d  #0x2f, 0x8f
    nop

    .line 772
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 773
    invoke-direct {v0, v10}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 774
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 1006
    :pswitch_23a  #0x8b, 0xbe, 0xc1
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1007
    invoke-direct {v0, v8}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    :pswitch_242  #0x31, 0x8a
    nop

    .line 778
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 779
    invoke-direct {v0, v9}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 780
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 999
    :pswitch_24f  #0x87, 0x8d
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1000
    invoke-direct {v0, v9}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 1001
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 994
    :pswitch_25a  #0x86
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 995
    const v1, 0x400002

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 989
    :pswitch_265  #0x85, 0x8c
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 990
    invoke-direct {v0, v10}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 991
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 985
    :pswitch_270  #0x84
    invoke-direct {v0, v2, v8}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_361

    .line 980
    :pswitch_275  #0x79, 0x7b, 0x7d
    invoke-direct {v0, v12}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 981
    invoke-direct {v0, v10}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 982
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 973
    :pswitch_280  #0x63, 0x67, 0x6b, 0x6f, 0x73
    invoke-direct {v0, v14}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 974
    invoke-direct {v0, v9}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 975
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    :pswitch_28b  #0x30, 0x62, 0x66, 0x6a, 0x6e, 0x72, 0x89, 0x90
    nop

    .line 965
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 966
    const v1, 0x400002

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 953
    :pswitch_298  #0x61, 0x65, 0x69, 0x6d, 0x71, 0x7f, 0x81, 0x83
    invoke-direct {v0, v14}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 954
    invoke-direct {v0, v10}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 955
    invoke-direct {v0, v11}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    :pswitch_2a3  #0x2e, 0x33, 0x34, 0x35, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x78, 0x7a, 0x7c, 0x7e, 0x80, 0x82, 0x88, 0x8e, 0x95, 0x96
    nop

    .line 942
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 943
    invoke-direct {v0, v8}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 918
    :pswitch_2ad  #0x5f
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 919
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 920
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 921
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 906
    :pswitch_2bd  #0x5e
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 907
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 908
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v3

    .line 909
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v4

    .line 910
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 911
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 912
    invoke-direct {v0, v4}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 913
    invoke-direct {v0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 914
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 915
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_361

    .line 896
    :pswitch_2e1  #0x5d
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 897
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 898
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v3

    .line 899
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 900
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 901
    invoke-direct {v0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 902
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 903
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_361

    .line 888
    :pswitch_2fd  #0x5c
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 889
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 890
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 891
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 892
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 893
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_361

    .line 879
    :pswitch_312  #0x5b
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 880
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 881
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v3

    .line 882
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 883
    invoke-direct {v0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 884
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 885
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_361

    .line 872
    :pswitch_32b  #0x5a
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 873
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 874
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 875
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 876
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_361

    .line 867
    :pswitch_33d  #0x59
    invoke-direct/range {p0 .. p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 868
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 869
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_361

    .line 864
    :pswitch_348  #0x58, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xad, 0xaf
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_361

    .line 832
    :pswitch_34d  #0x50, 0x52
    invoke-direct {v0, v14}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_361

    .line 828
    :pswitch_351  #0x4f, 0x51, 0x53, 0x54, 0x55, 0x56
    invoke-direct {v0, v12}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_361

    .line 851
    :pswitch_355  #0x57, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0xaa, 0xab, 0xac, 0xae, 0xb0, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    invoke-direct {v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_361

    .line 1102
    :pswitch_359  #0xc5
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1103
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    .line 700
    :cond_361
    :goto_361
    :pswitch_361  #0x0, 0x74, 0x75, 0x76, 0x77, 0x91, 0x92, 0x93, 0xa7, 0xb1
    return-void

    :pswitch_data_362
    .packed-switch 0x0
        :pswitch_361  #00000000
        :pswitch_9f  #00000001
        :pswitch_c2  #00000002
        :pswitch_c2  #00000003
        :pswitch_c2  #00000004
        :pswitch_c2  #00000005
        :pswitch_c2  #00000006
        :pswitch_c2  #00000007
        :pswitch_c2  #00000008
        :pswitch_ba  #00000009
        :pswitch_ba  #0000000a
        :pswitch_b5  #0000000b
        :pswitch_b5  #0000000c
        :pswitch_b5  #0000000d
        :pswitch_ad  #0000000e
        :pswitch_ad  #0000000f
        :pswitch_c2  #00000010
        :pswitch_c2  #00000011
        :pswitch_40  #00000012
    .end packed-switch

    :pswitch_data_38c
    .packed-switch 0x15
        :pswitch_c2  #00000015
        :pswitch_ba  #00000016
        :pswitch_b5  #00000017
        :pswitch_ad  #00000018
        :pswitch_a4  #00000019
    .end packed-switch

    :pswitch_data_39a
    .packed-switch 0x2e
        :pswitch_2a3  #0000002e
        :pswitch_22d  #0000002f
        :pswitch_28b  #00000030
        :pswitch_242  #00000031
        :pswitch_119  #00000032
        :pswitch_2a3  #00000033
        :pswitch_2a3  #00000034
        :pswitch_2a3  #00000035
        :pswitch_f4  #00000036
        :pswitch_c7  #00000037
        :pswitch_f4  #00000038
        :pswitch_c7  #00000039
        :pswitch_f4  #0000003a
    .end packed-switch

    :pswitch_data_3b8
    .packed-switch 0x4f
        :pswitch_351  #0000004f
        :pswitch_34d  #00000050
        :pswitch_351  #00000051
        :pswitch_34d  #00000052
        :pswitch_351  #00000053
        :pswitch_351  #00000054
        :pswitch_351  #00000055
        :pswitch_351  #00000056
        :pswitch_355  #00000057
        :pswitch_348  #00000058
        :pswitch_33d  #00000059
        :pswitch_32b  #0000005a
        :pswitch_312  #0000005b
        :pswitch_2fd  #0000005c
        :pswitch_2e1  #0000005d
        :pswitch_2bd  #0000005e
        :pswitch_2ad  #0000005f
        :pswitch_2a3  #00000060
        :pswitch_298  #00000061
        :pswitch_28b  #00000062
        :pswitch_280  #00000063
        :pswitch_2a3  #00000064
        :pswitch_298  #00000065
        :pswitch_28b  #00000066
        :pswitch_280  #00000067
        :pswitch_2a3  #00000068
        :pswitch_298  #00000069
        :pswitch_28b  #0000006a
        :pswitch_280  #0000006b
        :pswitch_2a3  #0000006c
        :pswitch_298  #0000006d
        :pswitch_28b  #0000006e
        :pswitch_280  #0000006f
        :pswitch_2a3  #00000070
        :pswitch_298  #00000071
        :pswitch_28b  #00000072
        :pswitch_280  #00000073
        :pswitch_361  #00000074
        :pswitch_361  #00000075
        :pswitch_361  #00000076
        :pswitch_361  #00000077
        :pswitch_2a3  #00000078
        :pswitch_275  #00000079
        :pswitch_2a3  #0000007a
        :pswitch_275  #0000007b
        :pswitch_2a3  #0000007c
        :pswitch_275  #0000007d
        :pswitch_2a3  #0000007e
        :pswitch_298  #0000007f
        :pswitch_2a3  #00000080
        :pswitch_298  #00000081
        :pswitch_2a3  #00000082
        :pswitch_298  #00000083
        :pswitch_270  #00000084
        :pswitch_265  #00000085
        :pswitch_25a  #00000086
        :pswitch_24f  #00000087
        :pswitch_2a3  #00000088
        :pswitch_28b  #00000089
        :pswitch_242  #0000008a
        :pswitch_23a  #0000008b
        :pswitch_265  #0000008c
        :pswitch_24f  #0000008d
        :pswitch_2a3  #0000008e
        :pswitch_22d  #0000008f
        :pswitch_28b  #00000090
        :pswitch_361  #00000091
        :pswitch_361  #00000092
        :pswitch_361  #00000093
        :pswitch_225  #00000094
        :pswitch_2a3  #00000095
        :pswitch_2a3  #00000096
        :pswitch_225  #00000097
        :pswitch_225  #00000098
        :pswitch_355  #00000099
        :pswitch_355  #0000009a
        :pswitch_355  #0000009b
        :pswitch_355  #0000009c
        :pswitch_355  #0000009d
        :pswitch_355  #0000009e
        :pswitch_348  #0000009f
        :pswitch_348  #000000a0
        :pswitch_348  #000000a1
        :pswitch_348  #000000a2
        :pswitch_348  #000000a3
        :pswitch_348  #000000a4
        :pswitch_348  #000000a5
        :pswitch_348  #000000a6
        :pswitch_361  #000000a7
        :pswitch_21d  #000000a8
        :pswitch_21d  #000000a9
        :pswitch_355  #000000aa
        :pswitch_355  #000000ab
        :pswitch_355  #000000ac
        :pswitch_348  #000000ad
        :pswitch_355  #000000ae
        :pswitch_348  #000000af
        :pswitch_355  #000000b0
        :pswitch_361  #000000b1
        :pswitch_216  #000000b2
        :pswitch_20f  #000000b3
        :pswitch_205  #000000b4
        :pswitch_1fb  #000000b5
        :pswitch_1d6  #000000b6
        :pswitch_1d6  #000000b7
        :pswitch_1d6  #000000b8
        :pswitch_1d6  #000000b9
        :pswitch_1ca  #000000ba
        :pswitch_1bc  #000000bb
        :pswitch_170  #000000bc
        :pswitch_145  #000000bd
        :pswitch_23a  #000000be
        :pswitch_355  #000000bf
        :pswitch_12b  #000000c0
        :pswitch_23a  #000000c1
        :pswitch_355  #000000c2
        :pswitch_355  #000000c3
    .end packed-switch

    :pswitch_data_4a6
    .packed-switch 0xc5
        :pswitch_359  #000000c5
        :pswitch_355  #000000c6
        :pswitch_355  #000000c7
    .end packed-switch

    :pswitch_data_4b0
    .packed-switch 0x3
        :pswitch_7b  #00000003
        :pswitch_76  #00000004
        :pswitch_6e  #00000005
        :pswitch_66  #00000006
        :pswitch_5a  #00000007
        :pswitch_4e  #00000008
    .end packed-switch

    :pswitch_data_4c0
    .packed-switch 0xf
        :pswitch_93  #0000000f
        :pswitch_87  #00000010
        :pswitch_80  #00000011
    .end packed-switch

    :pswitch_data_4ca
    .packed-switch 0x4
        :pswitch_1b4  #00000004
        :pswitch_1ac  #00000005
        :pswitch_1a4  #00000006
        :pswitch_19c  #00000007
        :pswitch_194  #00000008
        :pswitch_18c  #00000009
        :pswitch_184  #0000000a
        :pswitch_17c  #0000000b
    .end packed-switch
.end method

.method final getInputStackSize()I
    .registers 2

    .line 467
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    array-length v0, v0

    return v0
.end method

.method final merge(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/Frame;I)Z
    .registers 12

    .line 1169
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    array-length v0, v0

    .line 1170
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    array-length v1, v1

    .line 1171
    iget-object v2, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_12

    .line 1172
    new-array v2, v0, [I

    iput-object v2, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const/4 v5, 0x0

    :goto_14
    if-lt v5, v0, :cond_89

    if-lez p3, :cond_3b

    const/4 v1, 0x0

    :goto_19
    if-lt v1, v0, :cond_2d

    .line 1209
    iget-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    if-nez v0, :cond_24

    .line 1210
    new-array v0, v3, [I

    iput-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    goto :goto_25

    .line 1209
    :cond_24
    move v3, v2

    .line 1213
    :goto_25
    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    invoke-static {p1, p3, p2, v4}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result p1

    or-int/2addr p1, v3

    return p1

    .line 1207
    :cond_2d
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v5, v5, v1

    iget-object v6, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    invoke-static {p1, v5, v6, v1}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1220
    :cond_3b
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    array-length p3, p3

    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    add-int v6, p3, v0

    .line 1221
    iget-object p3, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    if-nez p3, :cond_4e

    .line 1222
    iget-short p3, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    add-int/2addr p3, v6

    new-array p3, p3, [I

    iput-object p3, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    goto :goto_4f

    .line 1221
    :cond_4e
    move v3, v2

    .line 1222
    :goto_4f
    const/4 p3, 0x0

    :goto_50
    if-lt p3, v6, :cond_73

    .line 1237
    :goto_52
    iget-short p3, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    if-lt v4, p3, :cond_57

    return v3

    .line 1238
    :cond_57
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    aget p3, p3, v4

    .line 1239
    invoke-direct {p0, p3, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getConcreteOutputType(II)I

    move-result p3

    .line 1240
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-eqz v0, :cond_67

    .line 1241
    invoke-direct {p0, p1, p3}, Lzeroaicy/org/objectweb/asm/Frame;->getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I

    move-result p3

    .line 1243
    :cond_67
    iget-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    add-int v2, v6, v4

    invoke-static {p1, p3, v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result p3

    or-int/2addr v3, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 1229
    :cond_73
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    aget v0, v0, p3

    .line 1230
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-eqz v2, :cond_7f

    .line 1231
    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I

    move-result v0

    .line 1233
    :cond_7f
    iget-object v2, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    invoke-static {p1, v0, v2, p3}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v0

    or-int/2addr v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_50

    .line 1177
    :cond_89
    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    if-eqz v6, :cond_9e

    array-length v7, v6

    if-ge v5, v7, :cond_9e

    .line 1178
    aget v6, v6, v5

    if-nez v6, :cond_99

    .line 1182
    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v6, v6, v5

    goto :goto_a2

    .line 1184
    :cond_99
    invoke-direct {p0, v6, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getConcreteOutputType(II)I

    move-result v6

    goto :goto_a2

    .line 1189
    :cond_9e
    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v6, v6, v5

    .line 1194
    :goto_a2
    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-eqz v7, :cond_aa

    .line 1195
    invoke-direct {p0, p1, v6}, Lzeroaicy/org/objectweb/asm/Frame;->getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I

    move-result v6

    .line 1197
    :cond_aa
    iget-object v7, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    invoke-static {p1, v6, v7, v5}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14
.end method

.method final setInputFrameFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "I[",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/high16 v3, 0x400000

    if-lt v1, p2, :cond_59

    .line 445
    :goto_7
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    array-length p3, p2

    if-lt v2, p3, :cond_54

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_e
    if-lt p2, p4, :cond_43

    .line 454
    add-int/2addr p3, p4

    new-array p2, p3, [I

    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_17
    if-lt p2, p4, :cond_1f

    int-to-short p1, v0

    .line 462
    iput-short p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    .line 463
    iput v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    return-void

    .line 457
    :cond_1f
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    add-int/lit8 v2, p3, 0x1

    aget-object v4, p5, p2

    invoke-static {p1, v4}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v4

    aput v4, v1, p3

    .line 458
    aget-object v1, p5, p2

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v4, :cond_3a

    aget-object v1, p5, p2

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v4, :cond_38

    goto :goto_3a

    :cond_38
    move p3, v2

    goto :goto_40

    .line 459
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    aput v3, v1, v2

    add-int/lit8 p3, p3, 0x2

    :goto_40
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 450
    :cond_43
    aget-object v1, p5, p2

    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_4f

    aget-object v1, p5, p2

    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_51

    :cond_4f
    add-int/lit8 p3, p3, 0x1

    :cond_51
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 446
    :cond_54
    aput v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 440
    :cond_59
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    add-int/lit8 v5, v2, 0x1

    aget-object v6, p3, v1

    invoke-static {p1, v6}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v2

    .line 441
    aget-object v4, p3, v1

    sget-object v6, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v4, v6, :cond_74

    aget-object v4, p3, v1

    sget-object v6, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v4, v6, :cond_72

    goto :goto_74

    :cond_72
    move v2, v5

    goto :goto_7a

    .line 442
    :cond_74
    :goto_74
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x2

    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method final setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 397
    new-array v0, p4, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    .line 398
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_27

    const/high16 v2, 0x40000

    and-int/2addr p2, v2

    if-nez p2, :cond_20

    .line 402
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p2

    const/high16 v2, 0x800000

    or-int/2addr p2, v2

    aput p2, v0, v1

    goto :goto_25

    .line 405
    :cond_20
    const p2, 0x400006

    aput p2, v0, v1

    :goto_25
    const/4 p2, 0x1

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    .line 408
    :goto_28
    invoke-static {p3}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p3

    const/4 v0, 0x0

    .line 413
    :goto_2d
    array-length v2, p3

    const/high16 v3, 0x400000

    if-lt v0, v2, :cond_3c

    :goto_32
    if-lt p2, p4, :cond_35

    return-void

    .line 417
    :cond_35
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aput v3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    .line 408
    :cond_3c
    aget-object v2, p3, v0

    .line 409
    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v2

    .line 411
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    add-int/lit8 v5, p2, 0x1

    aput v2, v4, p2

    const v6, 0x400004

    if-eq v2, v6, :cond_59

    const v6, 0x400003

    if-ne v2, v6, :cond_57

    goto :goto_59

    :cond_57
    move p2, v5

    goto :goto_5d

    .line 413
    :cond_59
    :goto_59
    aput v3, v4, v5

    add-int/lit8 p2, p2, 0x2

    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method
