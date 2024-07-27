.class Lsun/reflect/AccessorGenerator;
.super Ljava/lang/Object;
.source "AccessorGenerator.java"

# interfaces
.implements Lsun/reflect/ClassFileConstants;


# static fields
.field protected static final S0:S = 0x0s

.field protected static final S1:S = 0x1s

.field protected static final S2:S = 0x2s

.field protected static final S3:S = 0x3s

.field protected static final S4:S = 0x4s

.field protected static final S5:S = 0x5s

.field protected static final S6:S = 0x6s

.field protected static final primitiveTypes:[Ljava/lang/Class;

.field static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field protected final NUM_BOXING_CPOOL_ENTRIES:S

.field protected final NUM_COMMON_CPOOL_ENTRIES:S

.field protected asm:Lsun/reflect/ClassFileAssembler;

.field protected booleanCtorIdx:S

.field protected booleanIdx:S

.field protected booleanUnboxIdx:S

.field protected byteCtorIdx:S

.field protected byteIdx:S

.field protected byteUnboxIdx:S

.field protected characterCtorIdx:S

.field protected characterIdx:S

.field protected characterUnboxIdx:S

.field protected classCastClass:S

.field protected codeIdx:S

.field protected doubleCtorIdx:S

.field protected doubleIdx:S

.field protected doubleUnboxIdx:S

.field protected exceptionsIdx:S

.field protected floatCtorIdx:S

.field protected floatIdx:S

.field protected floatUnboxIdx:S

.field protected illegalArgumentClass:S

.field private illegalArgumentCodeBuffer:Lsun/reflect/ClassFileAssembler;

.field protected illegalArgumentCtorIdx:S

.field protected illegalArgumentStringCtorIdx:S

.field protected initIdx:S

.field protected initNameAndTypeIdx:S

.field protected initStringNameAndTypeIdx:S

.field protected integerCtorIdx:S

.field protected integerIdx:S

.field protected integerUnboxIdx:S

.field protected invocationTargetClass:S

.field protected invocationTargetCtorIdx:S

.field protected longCtorIdx:S

.field protected longIdx:S

.field protected longUnboxIdx:S

.field protected modifiers:I

.field protected nullPointerClass:S

.field protected nullPointerCtorIdx:S

.field protected objectClass:S

.field protected shortCtorIdx:S

.field protected shortIdx:S

.field protected shortUnboxIdx:S

.field protected superClass:S

.field protected superCtorIdx:S

.field protected targetClass:S

.field protected thisClass:S

.field protected throwableClass:S

.field protected toStringIdx:S


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/reflect/AccessorGenerator;->unsafe:Lsun/misc/Unsafe;

    .line 674
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lsun/reflect/AccessorGenerator;->primitiveTypes:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v0, 0x1e

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->NUM_COMMON_CPOOL_ENTRIES:S

    .line 98
    const/16 v0, 0x48

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->NUM_BOXING_CPOOL_ENTRIES:S

    return-void
.end method

.method protected static add(SS)S
    .registers 3

    .line 371
    add-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method protected static canWidenTo(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 538
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v0

    .line 550
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_2

    .line 551
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 552
    goto :goto_0

    .line 554
    :cond_2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_4

    .line 555
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_3
    move v0, v1

    .line 561
    goto :goto_0

    .line 563
    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_6

    .line 564
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_5
    move v0, v1

    .line 569
    goto :goto_0

    .line 571
    :cond_6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_8

    .line 572
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_7

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_7

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_7
    move v0, v1

    .line 577
    goto :goto_0

    .line 579
    :cond_8
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_a

    .line 580
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_9

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_9

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_9

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_9
    move v0, v1

    .line 584
    goto :goto_0

    .line 586
    :cond_a
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_c

    .line 587
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_b

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_b

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_b
    move v0, v1

    .line 590
    goto/16 :goto_0

    .line 592
    :cond_c
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_e

    .line 593
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_d

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_d
    move v0, v1

    .line 595
    goto/16 :goto_0

    .line 597
    :cond_e
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_0

    .line 598
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 599
    goto/16 :goto_0
.end method

.method protected static emitWideningBytecodeForPrimitiveConversion(Lsun/reflect/ClassFileAssembler;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4

    .line 627
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 631
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    .line 632
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->opc_i2l()V

    .line 651
    :cond_1
    :goto_0
    return-void

    .line 638
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 639
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    .line 640
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->opc_l2f()V

    goto :goto_0

    .line 641
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 642
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->opc_l2d()V

    goto :goto_0

    .line 644
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 645
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 646
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->opc_f2d()V

    goto :goto_0

    .line 633
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    .line 634
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->opc_i2f()V

    goto :goto_0

    .line 635
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 636
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->opc_i2d()V

    goto :goto_0
.end method

.method protected static getClassName(Ljava/lang/Class;Z)Ljava/lang/String;
    .registers 5

    .line 387
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 388
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 389
    const-string v0, "Z"

    .line 414
    :goto_0
    return-object v0

    .line 390
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 391
    const-string v0, "B"

    goto :goto_0

    .line 392
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 393
    const-string v0, "C"

    goto :goto_0

    .line 394
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 395
    const-string v0, "D"

    goto :goto_0

    .line 396
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 397
    const-string v0, "F"

    goto :goto_0

    .line 398
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 399
    const-string v0, "I"

    goto :goto_0

    .line 400
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 401
    const-string v0, "J"

    goto :goto_0

    .line 402
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 403
    const-string v0, "S"

    goto :goto_0

    .line 404
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 405
    const-string v0, "V"

    goto :goto_0

    .line 407
    :cond_8
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Should have found primitive type"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/reflect/AccessorGenerator;->getClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_a
    if-eqz p1, :cond_b

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/AccessorGenerator;->internalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 414
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/AccessorGenerator;->internalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static internalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 420
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static isPrimitive(Ljava/lang/Class;)Z
    .registers 2

    .line 687
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static sub(SS)S
    .registers 3

    .line 375
    sub-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method protected ctorIndexForPrimitiveType(Ljava/lang/Class;)S
    .registers 4

    .line 515
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 516
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->booleanCtorIdx:S

    .line 530
    :goto_0
    return v0

    .line 517
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 518
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->byteCtorIdx:S

    goto :goto_0

    .line 519
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 520
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->characterCtorIdx:S

    goto :goto_0

    .line 521
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 522
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->doubleCtorIdx:S

    goto :goto_0

    .line 523
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 524
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->floatCtorIdx:S

    goto :goto_0

    .line 525
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 526
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->integerCtorIdx:S

    goto :goto_0

    .line 527
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 528
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->longCtorIdx:S

    goto :goto_0

    .line 529
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 530
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->shortCtorIdx:S

    goto :goto_0

    .line 532
    :cond_7
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Should have found primitive type"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected emitBoxingContantPoolEntries()V
    .registers 7

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 257
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Boolean"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 259
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->booleanIdx:S

    .line 260
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(Z)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 262
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 263
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->booleanCtorIdx:S

    .line 264
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "booleanValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()Z"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 267
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 268
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->booleanUnboxIdx:S

    .line 271
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Byte"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 273
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->byteIdx:S

    .line 274
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(B)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 276
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 277
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->byteCtorIdx:S

    .line 278
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "byteValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()B"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 281
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 282
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->byteUnboxIdx:S

    .line 285
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Character"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 287
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->characterIdx:S

    .line 288
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(C)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 290
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 291
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->characterCtorIdx:S

    .line 292
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "charValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()C"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 295
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 296
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->characterUnboxIdx:S

    .line 299
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Double"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 301
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->doubleIdx:S

    .line 302
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(D)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 304
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 305
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->doubleCtorIdx:S

    .line 306
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "doubleValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()D"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 309
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 310
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->doubleUnboxIdx:S

    .line 313
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Float"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 315
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->floatIdx:S

    .line 316
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(F)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 318
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 319
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->floatCtorIdx:S

    .line 320
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "floatValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()F"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 323
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 324
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->floatUnboxIdx:S

    .line 327
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Integer"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 329
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->integerIdx:S

    .line 330
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(I)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 332
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 333
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->integerCtorIdx:S

    .line 334
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "intValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()I"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 337
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 338
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->integerUnboxIdx:S

    .line 341
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Long"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 343
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->longIdx:S

    .line 344
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(J)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 346
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 347
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->longCtorIdx:S

    .line 348
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "longValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()J"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 351
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 352
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->longUnboxIdx:S

    .line 355
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Short"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 357
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->shortIdx:S

    .line 358
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(S)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 360
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v4}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 361
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->shortCtorIdx:S

    .line 362
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "shortValue"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()S"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v3}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 365
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-static {v1, v5}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 366
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->shortUnboxIdx:S

    .line 367
    return-void
.end method

.method protected emitCommonConstantPoolEntries()V
    .registers 4

    .line 132
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Throwable"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 134
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->throwableClass:S

    .line 135
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/ClassCastException"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 137
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->classCastClass:S

    .line 138
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/NullPointerException"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 140
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->nullPointerClass:S

    .line 141
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/IllegalArgumentException"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 143
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentClass:S

    .line 144
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/reflect/InvocationTargetException"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 146
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->invocationTargetClass:S

    .line 147
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    .line 149
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 151
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->initNameAndTypeIdx:S

    .line 152
    iget-object v1, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v2, p0, Lsun/reflect/AccessorGenerator;->nullPointerClass:S

    invoke-virtual {v1, v2, v0}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 153
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->nullPointerCtorIdx:S

    .line 154
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentClass:S

    iget-short v2, p0, Lsun/reflect/AccessorGenerator;->initNameAndTypeIdx:S

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 155
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCtorIdx:S

    .line 156
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(Ljava/lang/String;)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 158
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->initStringNameAndTypeIdx:S

    .line 159
    iget-object v1, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v2, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentClass:S

    invoke-virtual {v1, v2, v0}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 160
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentStringCtorIdx:S

    .line 161
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "(Ljava/lang/Throwable;)V"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 163
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->invocationTargetClass:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 164
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->invocationTargetCtorIdx:S

    .line 165
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->superClass:S

    iget-short v2, p0, Lsun/reflect/AccessorGenerator;->initNameAndTypeIdx:S

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 166
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->superCtorIdx:S

    .line 167
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "java/lang/Object"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 169
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->objectClass:S

    .line 170
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "toString"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "()Ljava/lang/String;"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/reflect/AccessorGenerator;->sub(SS)S

    move-result v1

    iget-object v2, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 173
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->objectClass:S

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    .line 174
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->toStringIdx:S

    .line 175
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->codeIdx:S

    .line 177
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v0

    iput-short v0, p0, Lsun/reflect/AccessorGenerator;->exceptionsIdx:S

    .line 179
    return-void
.end method

.method protected emitConstructor()V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 425
    new-instance v3, Lsun/reflect/ClassFileAssembler;

    invoke-direct {v3}, Lsun/reflect/ClassFileAssembler;-><init>()V

    .line 427
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lsun/reflect/ClassFileAssembler;->setMaxLocals(I)V

    .line 428
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_0()V

    .line 429
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->superCtorIdx:S

    invoke-virtual {v3, v0, v1, v1}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 430
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_return()V

    .line 433
    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->initIdx:S

    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->getMaxLocals()S

    move-result v2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lsun/reflect/AccessorGenerator;->emitMethod(SILsun/reflect/ClassFileAssembler;Lsun/reflect/ClassFileAssembler;[S)V

    .line 434
    return-void
.end method

.method protected emitMethod(SILsun/reflect/ClassFileAssembler;Lsun/reflect/ClassFileAssembler;[S)V
    .registers 13

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p3}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v2

    .line 451
    if-eqz p4, :cond_4

    .line 452
    invoke-virtual {p4}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v0

    .line 453
    rem-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    .line 457
    :goto_0
    div-int/lit8 v3, v0, 0x8

    .line 460
    iget-object v4, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v4, v6}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 461
    iget-object v4, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v4, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 462
    iget-object v4, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-static {p1, v6}, Lsun/reflect/AccessorGenerator;->add(SS)S

    move-result v5

    invoke-virtual {v4, v5}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 463
    if-nez p5, :cond_2

    .line 465
    iget-object v4, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v4, v6}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 471
    :goto_1
    iget-object v4, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v5, p0, Lsun/reflect/AccessorGenerator;->codeIdx:S

    invoke-virtual {v4, v5}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 472
    iget-object v4, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    add-int/lit8 v5, v2, 0xc

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lsun/reflect/ClassFileAssembler;->emitInt(I)V

    .line 473
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {p3}, Lsun/reflect/ClassFileAssembler;->getMaxStack()S

    move-result v4

    invoke-virtual {v0, v4}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 474
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {p3}, Lsun/reflect/ClassFileAssembler;->getMaxLocals()S

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 475
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0, v2}, Lsun/reflect/ClassFileAssembler;->emitInt(I)V

    .line 476
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0, p3}, Lsun/reflect/ClassFileAssembler;->append(Lsun/reflect/ClassFileAssembler;)V

    .line 477
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    int-to-short v2, v3

    invoke-virtual {v0, v2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 478
    if-eqz p4, :cond_0

    .line 479
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0, p4}, Lsun/reflect/ClassFileAssembler;->append(Lsun/reflect/ClassFileAssembler;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 482
    if-eqz p5, :cond_3

    .line 484
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v2, p0, Lsun/reflect/AccessorGenerator;->exceptionsIdx:S

    invoke-virtual {v0, v2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 485
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    array-length v2, p5

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lsun/reflect/ClassFileAssembler;->emitInt(I)V

    .line 486
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    array-length v2, p5

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 487
    :goto_2
    array-length v0, p5

    if-ge v1, v0, :cond_3

    .line 488
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    aget-short v2, p5, v1

    invoke-virtual {v0, v2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 454
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal exception table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_2
    iget-object v4, p0, Lsun/reflect/AccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    goto :goto_1

    .line 491
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method protected illegalArgumentCodeBuffer()Lsun/reflect/ClassFileAssembler;
    .registers 4

    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCodeBuffer:Lsun/reflect/ClassFileAssembler;

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Lsun/reflect/ClassFileAssembler;

    invoke-direct {v0}, Lsun/reflect/ClassFileAssembler;-><init>()V

    iput-object v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCodeBuffer:Lsun/reflect/ClassFileAssembler;

    .line 704
    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentClass:S

    invoke-virtual {v0, v1}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 705
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCodeBuffer:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->opc_dup()V

    .line 706
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCodeBuffer:Lsun/reflect/ClassFileAssembler;

    iget-short v1, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCtorIdx:S

    invoke-virtual {v0, v1, v2, v2}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 707
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCodeBuffer:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v0}, Lsun/reflect/ClassFileAssembler;->opc_athrow()V

    .line 710
    :cond_0
    iget-object v0, p0, Lsun/reflect/AccessorGenerator;->illegalArgumentCodeBuffer:Lsun/reflect/ClassFileAssembler;

    return-object v0
.end method

.method protected indexForPrimitiveType(Ljava/lang/Class;)S
    .registers 4

    .line 494
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 495
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->booleanIdx:S

    .line 509
    :goto_0
    return v0

    .line 496
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 497
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->byteIdx:S

    goto :goto_0

    .line 498
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 499
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->characterIdx:S

    goto :goto_0

    .line 500
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 501
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->doubleIdx:S

    goto :goto_0

    .line 502
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 503
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->floatIdx:S

    goto :goto_0

    .line 504
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 505
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->integerIdx:S

    goto :goto_0

    .line 506
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 507
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->longIdx:S

    goto :goto_0

    .line 508
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 509
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->shortIdx:S

    goto :goto_0

    .line 511
    :cond_7
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Should have found primitive type"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isStatic()Z
    .registers 2

    .line 379
    iget v0, p0, Lsun/reflect/AccessorGenerator;->modifiers:I

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method protected typeSizeInStackSlots(Ljava/lang/Class;)I
    .registers 3

    .line 691
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    .line 694
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 695
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 697
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected unboxingMethodForPrimitiveType(Ljava/lang/Class;)S
    .registers 4

    .line 654
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 655
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->booleanUnboxIdx:S

    .line 669
    :goto_0
    return v0

    .line 656
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 657
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->byteUnboxIdx:S

    goto :goto_0

    .line 658
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 659
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->characterUnboxIdx:S

    goto :goto_0

    .line 660
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 661
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->shortUnboxIdx:S

    goto :goto_0

    .line 662
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 663
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->integerUnboxIdx:S

    goto :goto_0

    .line 664
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 665
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->longUnboxIdx:S

    goto :goto_0

    .line 666
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 667
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->floatUnboxIdx:S

    goto :goto_0

    .line 668
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 669
    iget-short v0, p0, Lsun/reflect/AccessorGenerator;->doubleUnboxIdx:S

    goto :goto_0

    .line 671
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal primitive type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
