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

    const/4 v3, 0x0

    .line 619
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    .line 622
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    array-length v0, v0

    .line 623
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    if-lt v1, v0, :cond_1

    .line 624
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 626
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    .line 630
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    aput p1, v0, v1

    return-void
.end method

.method static getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I
    .registers 5

    .line 281
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 282
    const/high16 v0, 0x400000

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    .line 287
    :goto_0
    return v0

    .line 283
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 284
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lzeroaicy/org/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 285
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 287
    :cond_1
    const/high16 v0, 0xc00000

    const-string v1, ""

    check-cast p1, Lzeroaicy/org/objectweb/asm/Label;

    iget v2, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {p0, v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private static getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I
    .registers 11

    const/high16 v7, 0x800000

    const v1, 0x400004

    const v2, 0x400003

    const v0, 0x400002

    const v3, 0x400001

    .line 315
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 374
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 318
    :pswitch_1
    const/4 v0, 0x0

    .line 372
    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    move v0, v1

    .line 328
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 330
    goto :goto_0

    .line 332
    :pswitch_5
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    goto :goto_0

    .line 335
    :pswitch_6
    add-int/lit8 v4, p2, 0x1

    .line 336
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_0

    .line 339
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 337
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 342
    :sswitch_0
    const v0, 0x400009

    .line 372
    :goto_2
    :sswitch_1
    sub-int v1, v4, p2

    shl-int/lit8 v1, v1, 0x1a

    or-int/2addr v0, v1

    goto :goto_0

    .line 345
    :sswitch_2
    const v0, 0x40000b

    .line 346
    goto :goto_2

    .line 348
    :sswitch_3
    const v0, 0x40000a

    .line 349
    goto :goto_2

    .line 351
    :sswitch_4
    const v0, 0x40000c

    .line 352
    goto :goto_2

    :sswitch_5
    move v0, v1

    .line 361
    goto :goto_2

    :sswitch_6
    move v0, v2

    .line 364
    goto :goto_2

    .line 366
    :sswitch_7
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    .line 368
    goto :goto_2

    :sswitch_8
    move v0, v3

    goto :goto_2

    :pswitch_7
    move v0, v3

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_6
        0x46 -> :sswitch_1
        0x49 -> :sswitch_8
        0x4a -> :sswitch_5
        0x4c -> :sswitch_7
        0x53 -> :sswitch_4
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method static getAbstractTypeFromInternalName(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)I
    .registers 4

    .line 302
    const/high16 v0, 0x800000

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private getConcreteOutputType(II)I
    .registers 11

    const v7, 0x400004

    const v6, 0x400003

    const/high16 v1, 0x400000

    const/high16 v5, 0x100000

    const v4, 0xfffff

    .line 1123
    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    .line 1124
    const/high16 v2, 0x3c00000

    and-int/2addr v2, p1

    .line 1125
    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_2

    .line 1129
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    and-int v3, p1, v4

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 1130
    and-int v2, p1, v5

    if-eqz v2, :cond_5

    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_5

    :cond_0
    move p1, v1

    .line 1146
    :cond_1
    :goto_0
    return p1

    .line 1135
    :cond_2
    const/high16 v3, 0x1400000

    if-ne v2, v3, :cond_1

    .line 1139
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    and-int v3, p1, v4

    sub-int v3, p2, v3

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 1140
    and-int v2, p1, v5

    if-eqz v2, :cond_3

    if-eq v0, v7, :cond_4

    if-ne v0, v6, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v0

    .line 1146
    goto :goto_0

    :cond_4
    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    goto :goto_0
.end method

.method private getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I
    .registers 12

    const/high16 v8, 0x800000

    const v7, 0x400006

    const v6, 0xfffff

    .line 643
    if-eq p2, v7, :cond_0

    const/high16 v0, -0x400000

    and-int/2addr v0, p2

    const/high16 v1, 0xc00000

    if-ne v0, v1, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    if-lt v0, v1, :cond_2

    .line 665
    :cond_1
    :goto_1
    return p2

    .line 646
    :cond_2
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    aget v1, v1, v0

    .line 647
    const/high16 v2, -0x4000000

    and-int/2addr v2, v1

    .line 648
    const/high16 v3, 0x3c00000

    and-int/2addr v3, v1

    .line 649
    and-int v4, v1, v6

    .line 650
    const/high16 v5, 0x1000000

    if-ne v3, v5, :cond_4

    .line 651
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v1, v1, v4

    add-int/2addr v1, v2

    .line 655
    :cond_3
    :goto_2
    if-ne p2, v1, :cond_6

    .line 656
    if-ne p2, v7, :cond_5

    .line 657
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int p2, v8, v0

    goto :goto_1

    .line 652
    :cond_4
    const/high16 v5, 0x1400000

    if-ne v3, v5, :cond_3

    .line 653
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    array-length v3, v3

    sub-int/2addr v3, v4

    aget v1, v1, v3

    add-int/2addr v1, v2

    goto :goto_2

    .line 659
    :cond_5
    and-int v0, p2, v6

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int p2, v8, v0

    goto :goto_1

    .line 645
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getLocal(I)I
    .registers 5

    const/high16 v2, 0x1000000

    .line 481
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 484
    :cond_0
    or-int v0, v2, p1

    .line 492
    :cond_1
    :goto_0
    return v0

    .line 486
    :cond_2
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    aget v0, v0, p1

    .line 487
    if-nez v0, :cond_1

    .line 490
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    or-int v0, v2, p1

    aput v0, v1, p1

    goto :goto_0
.end method

.method private static merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z
    .registers 12

    const/4 v0, 0x0

    const v1, 0x400005

    const/high16 v7, 0x3c00000

    const/high16 v6, -0x4000000

    const/high16 v5, 0x800000

    .line 1268
    aget v3, p2, p3

    .line 1269
    if-ne v3, p1, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return v0

    .line 1274
    :cond_1
    const v2, 0x3ffffff

    and-int/2addr v2, p1

    if-ne v2, v1, :cond_b

    .line 1275
    if-eq v3, v1, :cond_0

    move v2, v1

    .line 1280
    :goto_1
    if-nez v3, :cond_2

    .line 1282
    aput v2, p2, p3

    .line 1283
    const/4 v0, 0x1

    goto :goto_0

    .line 1285
    :cond_2
    and-int v4, v3, v6

    if-nez v4, :cond_3

    and-int v4, v3, v7

    if-ne v4, v5, :cond_9

    .line 1288
    :cond_3
    if-eq v2, v1, :cond_0

    .line 1291
    const/high16 v1, -0x400000

    and-int/2addr v1, v2

    const/high16 v4, -0x400000

    and-int/2addr v4, v3

    if-ne v1, v4, :cond_5

    .line 1293
    and-int v1, v3, v7

    if-ne v1, v5, :cond_4

    .line 1296
    const v1, 0xfffff

    and-int/2addr v1, v2

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-virtual {p0, v1, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addMergedType(II)I

    move-result v1

    and-int/2addr v2, v6

    or-int/2addr v2, v5

    or-int/2addr v1, v2

    .line 1334
    :goto_2
    if-eq v1, v3, :cond_0

    .line 1335
    aput v1, p2, p3

    .line 1336
    const/4 v0, 0x1

    goto :goto_0

    .line 1303
    :cond_4
    and-int v1, v2, v6

    const/high16 v2, 0x4000000

    sub-int/2addr v1, v2

    or-int/2addr v1, v5

    const-string v2, "java/lang/Object"

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_2

    .line 1306
    :cond_5
    and-int v1, v2, v6

    if-nez v1, :cond_6

    and-int v1, v2, v7

    if-ne v1, v5, :cond_8

    .line 1311
    :cond_6
    and-int v1, v2, v6

    .line 1312
    if-eqz v1, :cond_d

    and-int/2addr v2, v7

    if-eq v2, v5, :cond_d

    .line 1313
    add-int/2addr v1, v6

    move v2, v1

    .line 1315
    :goto_3
    and-int v1, v3, v6

    .line 1316
    if-eqz v1, :cond_7

    and-int v4, v3, v7

    if-eq v4, v5, :cond_7

    .line 1317
    const/high16 v4, 0x4000000

    sub-int/2addr v1, v4

    .line 1319
    :cond_7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    or-int/2addr v1, v5

    const-string v2, "java/lang/Object"

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_2

    .line 1323
    :cond_8
    const/high16 v1, 0x400000

    goto :goto_2

    .line 1325
    :cond_9
    if-ne v3, v1, :cond_a

    .line 1328
    and-int v1, v2, v6

    if-nez v1, :cond_c

    and-int v1, v2, v7

    if-eq v1, v5, :cond_c

    const/high16 v1, 0x400000

    goto :goto_2

    .line 1332
    :cond_a
    const/high16 v1, 0x400000

    goto :goto_2

    :cond_b
    move v2, p1

    .line 1338
    goto :goto_1

    :cond_c
    move v1, v2

    goto :goto_2

    :cond_d
    move v2, v1

    goto :goto_3
.end method

.method private pop()I
    .registers 3

    .line 567
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    if-lez v0, :cond_0

    .line 568
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    aget v0, v0, v1

    .line 571
    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    const/high16 v1, 0x1400000

    neg-int v0, v0

    or-int/2addr v0, v1

    goto :goto_0
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

    if-lt v0, p1, :cond_0

    .line 582
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    .line 587
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    sub-int v1, p1, v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    .line 587
    const/4 v0, 0x0

    int-to-short v0, v0

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    goto :goto_0
.end method

.method private pop(Ljava/lang/String;)V
    .registers 4
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

    .line 598
    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 599
    invoke-static {p1}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    .line 601
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_0

    .line 603
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto :goto_0
.end method

.method private push(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 524
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    if-nez v0, :cond_0

    .line 525
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    .line 527
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    array-length v0, v0

    .line 528
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    if-lt v1, v0, :cond_1

    .line 529
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 530
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    .line 534
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    aput p1, v0, v1

    .line 537
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 538
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v1, v1, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    if-le v0, v1, :cond_2

    .line 539
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    iput-short v0, v1, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    :cond_2
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

    const/4 v0, 0x0

    .line 550
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lzeroaicy/org/objectweb/asm/Type;->getReturnTypeOffset(Ljava/lang/String;)I

    move-result v0

    .line 552
    :cond_0
    invoke-static {p1, p2, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v0

    .line 553
    if-eqz v0, :cond_2

    .line 554
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 555
    const v1, 0x400004

    if-eq v0, v1, :cond_1

    const v1, 0x400003

    if-ne v0, v1, :cond_2

    .line 556
    :cond_1
    const/high16 v0, 0x400000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    :cond_2
    return-void
.end method

.method static putAbstractType(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "I",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/high16 v5, 0x3c00000

    const/4 v4, 0x7

    const v3, 0xfffff

    .line 1409
    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1a

    .line 1410
    if-nez v0, :cond_0

    .line 1411
    and-int v0, p1, v3

    .line 1412
    and-int v1, p1, v5

    sparse-switch v1, :sswitch_data_0

    .line 1425
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1414
    :sswitch_0
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1468
    :goto_0
    return-void

    .line 1417
    :sswitch_1
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1422
    :sswitch_2
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget-wide v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->data:J

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1429
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    :goto_1
    if-gtz v0, :cond_1

    .line 1433
    and-int v0, p1, v5

    const/high16 v2, 0x800000

    if-ne v0, v2, :cond_2

    .line 1434
    const/16 v0, 0x4c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int v2, p1, v3

    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getType(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v2

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1468
    :goto_2
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1431
    :cond_1
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1439
    :cond_2
    and-int v0, p1, v3

    packed-switch v0, :pswitch_data_0

    .line 1465
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1441
    :pswitch_1
    const/16 v0, 0x5a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1444
    :pswitch_2
    const/16 v0, 0x42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1447
    :pswitch_3
    const/16 v0, 0x43

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1450
    :pswitch_4
    const/16 v0, 0x53

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1453
    :pswitch_5
    const/16 v0, 0x49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1456
    :pswitch_6
    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1459
    :pswitch_7
    const/16 v0, 0x4a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1462
    :pswitch_8
    const/16 v0, 0x44

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1412
    :sswitch_data_0
    .sparse-switch
        0x400000 -> :sswitch_0
        0x800000 -> :sswitch_1
        0xc00000 -> :sswitch_2
    .end sparse-switch

    .line 1439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setLocal(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 504
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    if-nez v0, :cond_0

    .line 505
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    .line 507
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    array-length v0, v0

    .line 508
    if-lt p1, v0, :cond_1

    .line 509
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 510
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    .line 514
    :cond_1
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

    const v12, 0x400004

    const v11, 0x400003

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1356
    iget-object v8, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    move v0, v1

    move v2, v1

    move v3, v1

    .line 1360
    :goto_0
    array-length v4, v8

    if-lt v0, v4, :cond_0

    .line 1371
    iget-object v9, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    move v0, v1

    move v3, v1

    .line 1374
    :goto_1
    array-length v4, v9

    if-lt v0, v4, :cond_4

    .line 1380
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {p1, v0, v2, v3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v4

    move v7, v1

    .line 1382
    :goto_2
    if-gtz v2, :cond_7

    move v2, v4

    .line 1388
    :goto_3
    if-gtz v3, :cond_a

    .line 1393
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameEnd()V

    return-void

    .line 1361
    :cond_0
    aget v7, v8, v0

    .line 1362
    if-eq v7, v12, :cond_1

    if-ne v7, v11, :cond_2

    :cond_1
    move v4, v6

    :goto_4
    add-int/2addr v0, v4

    .line 1363
    const/high16 v4, 0x400000

    if-ne v7, v4, :cond_3

    .line 1364
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 1362
    goto :goto_4

    .line 1366
    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    move v3, v1

    .line 1367
    goto :goto_0

    .line 1375
    :cond_4
    aget v4, v9, v0

    .line 1376
    if-eq v4, v12, :cond_5

    if-ne v4, v11, :cond_6

    :cond_5
    move v4, v6

    :goto_5
    add-int/2addr v0, v4

    .line 1377
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v4, v5

    .line 1376
    goto :goto_5

    .line 1383
    :cond_7
    aget v10, v8, v7

    .line 1384
    if-eq v10, v12, :cond_8

    if-ne v10, v11, :cond_9

    :cond_8
    move v0, v6

    :goto_6
    add-int/2addr v0, v7

    .line 1385
    invoke-virtual {p1, v4, v10}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitAbstractType(II)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v7, v0

    goto :goto_2

    :cond_9
    move v0, v5

    .line 1384
    goto :goto_6

    .line 1389
    :cond_a
    aget v4, v9, v1

    .line 1390
    if-eq v4, v12, :cond_b

    if-ne v4, v11, :cond_c

    :cond_b
    move v0, v6

    :goto_7
    add-int/2addr v1, v0

    .line 1391
    invoke-virtual {p1, v2, v4}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitAbstractType(II)V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_3

    :cond_c
    move v0, v5

    .line 1390
    goto :goto_7
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

    .line 257
    const/4 v0, 0x0

    int-to-short v0, v0

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
    iget-object v0, p1, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    return-void
.end method

.method execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lzeroaicy/org/objectweb/asm/Symbol;",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            ")V"
        }
    .end annotation

    const v4, 0x400001

    const v3, 0x400003

    const v2, 0x400004

    const/4 v0, 0x1

    const/high16 v1, 0x400000

    .line 683
    packed-switch p1, :pswitch_data_0

    .line 1106
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 700
    :pswitch_1
    const v0, 0x400005

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 1106
    :cond_0
    :goto_0
    :pswitch_2
    return-void

    .line 712
    :pswitch_3
    invoke-direct {p0, v4}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 717
    :pswitch_4
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 718
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 724
    :pswitch_5
    const v0, 0x400002

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 729
    :pswitch_6
    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 730
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 733
    :pswitch_7
    iget v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    packed-switch v0, :pswitch_data_1

    .line 764
    :pswitch_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 735
    :pswitch_9
    invoke-direct {p0, v4}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 738
    :pswitch_a
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 739
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 742
    :pswitch_b
    const v0, 0x400002

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 745
    :pswitch_c
    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 746
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 749
    :pswitch_d
    const/high16 v0, 0x800000

    const-string v1, "java/lang/Class"

    invoke-virtual {p4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 752
    :pswitch_e
    const/high16 v0, 0x800000

    const-string v1, "java/lang/String"

    invoke-virtual {p4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 755
    :pswitch_f
    const/high16 v0, 0x800000

    const-string v1, "java/lang/invoke/MethodType"

    invoke-virtual {p4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 758
    :pswitch_10
    const/high16 v0, 0x800000

    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-virtual {p4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 761
    :pswitch_11
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :pswitch_12
    invoke-direct {p0, p2}, Lzeroaicy/org/objectweb/asm/Frame;->getLocal(I)I

    move-result v0

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto :goto_0

    .line 772
    :pswitch_13
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 773
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 774
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 778
    :pswitch_14
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 779
    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 780
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 783
    :pswitch_15
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 784
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 785
    const v1, 0x400005

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    :cond_1
    const/high16 v1, 0x4000000

    sub-int/2addr v0, v1

    goto :goto_1

    .line 790
    :pswitch_16
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 791
    invoke-direct {p0, p2, v0}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    .line 792
    if-lez p2, :cond_0

    .line 793
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getLocal(I)I

    move-result v0

    .line 794
    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_3

    .line 795
    :cond_2
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_0

    .line 796
    :cond_3
    const/high16 v1, 0x3c00000

    and-int/2addr v1, v0

    const/high16 v2, 0x1000000

    if-eq v1, v2, :cond_4

    const/high16 v1, 0x3c00000

    and-int/2addr v1, v0

    const/high16 v2, 0x1400000

    if-ne v1, v2, :cond_0

    .line 800
    :cond_4
    add-int/lit8 v1, p2, -0x1

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_0

    .line 806
    :pswitch_17
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 807
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 808
    invoke-direct {p0, p2, v0}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    .line 809
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    .line 810
    if-lez p2, :cond_0

    .line 811
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getLocal(I)I

    move-result v0

    .line 812
    if-eq v0, v2, :cond_5

    if-ne v0, v3, :cond_6

    .line 813
    :cond_5
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_0

    .line 814
    :cond_6
    const/high16 v1, 0x3c00000

    and-int/2addr v1, v0

    const/high16 v2, 0x1000000

    if-eq v1, v2, :cond_7

    const/high16 v1, 0x3c00000

    and-int/2addr v1, v0

    const/high16 v2, 0x1400000

    if-ne v1, v2, :cond_0

    .line 818
    :cond_7
    add-int/lit8 v1, p2, -0x1

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_0

    .line 828
    :pswitch_18
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 832
    :pswitch_19
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 851
    :pswitch_1a
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 864
    :pswitch_1b
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 867
    :pswitch_1c
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 868
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 869
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 872
    :pswitch_1d
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 873
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 874
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 875
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 876
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 879
    :pswitch_1e
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 880
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 881
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 882
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 883
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 884
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 885
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 888
    :pswitch_1f
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 889
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 890
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 891
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 892
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 893
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 896
    :pswitch_20
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 897
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 898
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 899
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 900
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 901
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 902
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 903
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 906
    :pswitch_21
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 907
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 908
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v2

    .line 909
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v3

    .line 910
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 911
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 912
    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 913
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 914
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 915
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 918
    :pswitch_22
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 919
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v1

    .line 920
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 921
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 942
    :pswitch_23
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 943
    invoke-direct {p0, v4}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 953
    :pswitch_24
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 954
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 955
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 965
    :pswitch_25
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 966
    const v0, 0x400002

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 973
    :pswitch_26
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 974
    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 975
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 980
    :pswitch_27
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 981
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 982
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 985
    :pswitch_28
    invoke-direct {p0, p2, v4}, Lzeroaicy/org/objectweb/asm/Frame;->setLocal(II)V

    goto/16 :goto_0

    .line 989
    :pswitch_29
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 990
    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 991
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 994
    :pswitch_2a
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 995
    const v0, 0x400002

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 999
    :pswitch_2b
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1000
    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    .line 1001
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1006
    :pswitch_2c
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1007
    invoke-direct {p0, v4}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1012
    :pswitch_2d
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1013
    invoke-direct {p0, v4}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1017
    :pswitch_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :pswitch_2f
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    :pswitch_30
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1025
    :pswitch_31
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1026
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    :pswitch_32
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1030
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    goto/16 :goto_0

    .line 1036
    :pswitch_33
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1037
    const/16 v0, 0xb8

    if-eq p1, v0, :cond_8

    .line 1038
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    move-result v0

    .line 1039
    const/16 v1, 0xb7

    if-ne p1, v1, :cond_8

    iget-object v1, p3, Lzeroaicy/org/objectweb/asm/Symbol;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_8

    .line 1040
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->addInitializedType(I)V

    .line 1043
    :cond_8
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1046
    :pswitch_34
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1050
    :pswitch_35
    const/high16 v0, 0xc00000

    iget-object v1, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p4, v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1053
    :pswitch_36
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    .line 1054
    packed-switch p2, :pswitch_data_2

    .line 1080
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1056
    :pswitch_37
    const v0, 0x4400009

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1059
    :pswitch_38
    const v0, 0x440000b

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1062
    :pswitch_39
    const v0, 0x440000a

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1065
    :pswitch_3a
    const v0, 0x440000c

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1068
    :pswitch_3b
    const v0, 0x4400001

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1071
    :pswitch_3c
    const v0, 0x4400002

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1074
    :pswitch_3d
    const v0, 0x4400003

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1077
    :pswitch_3e
    const v0, 0x4400004

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1084
    :pswitch_3f
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1085
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    .line 1086
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_9

    .line 1087
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1089
    :cond_9
    invoke-virtual {p4, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x4800000

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1093
    :pswitch_40
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1094
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/Frame;->pop()I

    .line 1095
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_a

    .line 1096
    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1098
    :cond_a
    invoke-virtual {p4, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1102
    :pswitch_41
    invoke-direct {p0, p2}, Lzeroaicy/org/objectweb/asm/Frame;->pop(I)V

    .line 1103
    iget-object v0, p3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {p0, p4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->push(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_13
        :pswitch_25
        :pswitch_14
        :pswitch_15
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_23
        :pswitch_27
        :pswitch_23
        :pswitch_27
        :pswitch_23
        :pswitch_27
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_23
        :pswitch_25
        :pswitch_14
        :pswitch_2c
        :pswitch_29
        :pswitch_2b
        :pswitch_23
        :pswitch_13
        :pswitch_25
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2d
        :pswitch_23
        :pswitch_23
        :pswitch_2d
        :pswitch_2d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_2
        :pswitch_2e
        :pswitch_2e
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_2
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_3f
        :pswitch_2c
        :pswitch_1a
        :pswitch_40
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_41
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    .line 733
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_10
        :pswitch_f
        :pswitch_11
    .end packed-switch

    .line 1054
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_37
        :pswitch_38
        :pswitch_3c
        :pswitch_3d
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3e
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    array-length v5, v0

    .line 1170
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    array-length v6, v0

    .line 1171
    iget-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    if-nez v0, :cond_c

    .line 1172
    new-array v0, v5, [I

    iput-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    move v0, v1

    :goto_0
    move v3, v0

    move v4, v2

    .line 1175
    :goto_1
    if-lt v4, v5, :cond_1

    .line 1205
    if-lez p3, :cond_6

    move v0, v3

    move v4, v2

    .line 1206
    :goto_2
    if-lt v4, v5, :cond_5

    .line 1209
    iget-object v3, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    if-nez v3, :cond_b

    .line 1210
    new-array v0, v1, [I

    iput-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    .line 1213
    :goto_3
    iget-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    invoke-static {p1, p3, v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v0

    or-int/2addr v0, v1

    .line 1246
    :cond_0
    return v0

    .line 1176
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    array-length v0, v0

    if-ge v4, v0, :cond_4

    .line 1178
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputLocals:[I

    aget v0, v0, v4

    .line 1179
    if-nez v0, :cond_3

    .line 1182
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v0, v0, v4

    .line 1194
    :goto_4
    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-eqz v7, :cond_2

    .line 1195
    invoke-direct {p0, p1, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I

    move-result v0

    .line 1197
    :cond_2
    iget-object v7, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    invoke-static {p1, v0, v7, v4}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v0

    or-int/2addr v3, v0

    .line 1175
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1184
    :cond_3
    invoke-direct {p0, v0, v6}, Lzeroaicy/org/objectweb/asm/Frame;->getConcreteOutputType(II)I

    move-result v0

    goto :goto_4

    .line 1189
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v0, v0, v4

    goto :goto_4

    .line 1207
    :cond_5
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aget v3, v3, v4

    iget-object v6, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    invoke-static {p1, v3, v6, v4}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v6

    .line 1206
    add-int/lit8 v3, v4, 0x1

    or-int/2addr v0, v6

    move v4, v3

    goto :goto_2

    .line 1220
    :cond_6
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    array-length v0, v0

    iget-short v4, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackStart:S

    add-int/2addr v4, v0

    .line 1221
    iget-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    if-nez v0, :cond_a

    .line 1222
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    add-int/2addr v0, v4

    new-array v0, v0, [I

    iput-object v0, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    :goto_5
    move v0, v1

    move v3, v2

    .line 1228
    :goto_6
    if-lt v3, v4, :cond_8

    .line 1237
    :goto_7
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    if-ge v2, v1, :cond_0

    .line 1238
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStack:[I

    aget v1, v1, v2

    .line 1239
    invoke-direct {p0, v1, v6}, Lzeroaicy/org/objectweb/asm/Frame;->getConcreteOutputType(II)I

    move-result v1

    .line 1240
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-eqz v3, :cond_7

    .line 1241
    invoke-direct {p0, p1, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I

    move-result v1

    .line 1243
    :cond_7
    iget-object v3, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    add-int v5, v4, v2

    invoke-static {p1, v1, v3, v5}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1237
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1229
    :cond_8
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    aget v1, v1, v3

    .line 1230
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializations:[I

    if-eqz v5, :cond_9

    .line 1231
    invoke-direct {p0, p1, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getInitializedType(Lzeroaicy/org/objectweb/asm/SymbolTable;I)I

    move-result v1

    .line 1233
    :cond_9
    iget-object v5, p2, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    invoke-static {p1, v1, v5, v3}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;I[II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1228
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :cond_a
    move v1, v3

    goto :goto_5

    :cond_b
    move v1, v0

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_0
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

    const/high16 v6, 0x400000

    const/4 v2, 0x0

    move v3, v2

    move v0, v2

    .line 439
    :goto_0
    if-lt v3, p2, :cond_0

    .line 445
    :goto_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    move v0, v2

    move v1, v2

    .line 449
    :goto_2
    if-lt v1, p4, :cond_3

    .line 454
    add-int/2addr v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    move v1, v2

    move v3, v2

    .line 456
    :goto_3
    if-lt v1, p4, :cond_6

    .line 462
    int-to-short v0, v2

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->outputStackTop:S

    .line 463
    iput v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->initializationCount:I

    return-void

    .line 440
    :cond_0
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    add-int/lit8 v1, v0, 0x1

    aget-object v5, p3, v3

    invoke-static {p1, v5}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v4, v0

    .line 441
    aget-object v0, p3, v3

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v4, :cond_1

    aget-object v0, p3, v3

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v4, :cond_9

    .line 442
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aput v6, v0, v1

    add-int/lit8 v0, v1, 0x1

    .line 439
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 446
    :cond_2
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    :cond_3
    aget-object v3, p5, v1

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v3, v4, :cond_4

    aget-object v3, p5, v1

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v3, v4, :cond_5

    .line 451
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 449
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 457
    :cond_6
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    add-int/lit8 v0, v3, 0x1

    aget-object v5, p5, v1

    invoke-static {p1, v5}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v4, v3

    .line 458
    aget-object v3, p5, v1

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v3, v4, :cond_7

    aget-object v3, p5, v1

    sget-object v4, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v3, v4, :cond_8

    .line 459
    :cond_7
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 456
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method final setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/high16 v7, 0x400000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 397
    new-array v2, p4, [I

    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    .line 398
    new-array v2, v1, [I

    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputStack:[I

    .line 400
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_5

    .line 401
    const/high16 v2, 0x40000

    and-int/2addr v2, p2

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    const/high16 v3, 0x800000

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 408
    :goto_0
    invoke-static {p3}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v4

    move v2, v1

    move v3, v0

    .line 413
    :goto_1
    array-length v0, v4

    if-lt v2, v0, :cond_1

    .line 416
    :goto_2
    if-lt v3, p4, :cond_3

    return-void

    .line 405
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    const v3, 0x400006

    aput v3, v2, v1

    goto :goto_0

    .line 408
    :cond_1
    aget-object v0, v4, v2

    .line 409
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v5

    .line 411
    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    add-int/lit8 v0, v3, 0x1

    aput v5, v6, v3

    .line 412
    const v3, 0x400004

    if-eq v5, v3, :cond_2

    const v3, 0x400003

    if-ne v5, v3, :cond_4

    .line 413
    :cond_2
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    add-int/lit8 v3, v0, 0x1

    aput v7, v5, v0

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 417
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Frame;->inputLocals:[I

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_0
.end method
