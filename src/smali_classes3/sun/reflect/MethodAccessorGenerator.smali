.class Lsun/reflect/MethodAccessorGenerator;
.super Lsun/reflect/AccessorGenerator;
.source "MethodAccessorGenerator.java"


# static fields
.field private static final NUM_BASE_CPOOL_ENTRIES:S = 0xcs

.field private static final NUM_METHODS:S = 0x2s

.field private static final NUM_SERIALIZATION_CPOOL_ENTRIES:S = 0x2s

.field private static volatile constructorSymnum:I

.field private static volatile methodSymnum:I

.field private static volatile serializationConstructorSymnum:I


# instance fields
.field private declaringClass:Ljava/lang/Class;

.field private forSerialization:Z

.field private invokeDescriptorIdx:S

.field private invokeIdx:S

.field private isConstructor:Z

.field private nonPrimitiveParametersBaseIdx:S

.field private parameterTypes:[Ljava/lang/Class;

.field private returnType:Ljava/lang/Class;

.field private targetMethodRef:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 49
    sput v0, Lsun/reflect/MethodAccessorGenerator;->methodSymnum:I

    .line 50
    sput v0, Lsun/reflect/MethodAccessorGenerator;->constructorSymnum:I

    .line 51
    sput v0, Lsun/reflect/MethodAccessorGenerator;->serializationConstructorSymnum:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lsun/reflect/AccessorGenerator;-><init>()V

    .line 67
    return-void
.end method

.method private buildInternalSignature()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    .line 755
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 756
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 758
    aget-object v2, v2, v0

    invoke-static {v2, v4}, Lsun/reflect/MethodAccessorGenerator;->getClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    :cond_0
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    iget-object v0, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    invoke-static {v0, v4}, Lsun/reflect/MethodAccessorGenerator;->getClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private emitInvoke()V
    .registers 14

    .line 421
    iget-object v0, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_18

    .line 426
    new-instance v3, Lsun/reflect/ClassFileAssembler;

    invoke-direct {v3}, Lsun/reflect/ClassFileAssembler;-><init>()V

    .line 427
    iget-boolean v0, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v0, :cond_5

    .line 429
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lsun/reflect/ClassFileAssembler;->setMaxLocals(I)V

    .line 435
    :goto_0
    iget-boolean v0, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v0, :cond_6

    .line 441
    iget-short v0, p0, Lsun/reflect/MethodAccessorGenerator;->targetClass:S

    invoke-virtual {v3, v0}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 442
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_dup()V

    .line 500
    :cond_0
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lsun/reflect/Label;

    invoke-direct {v1}, Lsun/reflect/Label;-><init>()V

    .line 501
    iget-object v2, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 502
    iget-boolean v2, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v2, :cond_8

    .line 503
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_1()V

    .line 507
    :goto_2
    invoke-virtual {v3, v1}, Lsun/reflect/ClassFileAssembler;->opc_ifnull(Lsun/reflect/Label;)V

    .line 509
    :cond_1
    iget-boolean v2, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v2, :cond_9

    .line 510
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_1()V

    .line 514
    :goto_3
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_arraylength()V

    .line 515
    iget-object v2, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v3, v2}, Lsun/reflect/ClassFileAssembler;->opc_sipush(S)V

    .line 516
    invoke-virtual {v3, v1}, Lsun/reflect/ClassFileAssembler;->opc_if_icmpeq(Lsun/reflect/Label;)V

    .line 517
    iget-short v2, p0, Lsun/reflect/MethodAccessorGenerator;->illegalArgumentClass:S

    invoke-virtual {v3, v2}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 518
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_dup()V

    .line 519
    iget-short v2, p0, Lsun/reflect/MethodAccessorGenerator;->illegalArgumentCtorIdx:S

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 520
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_athrow()V

    .line 521
    invoke-virtual {v1}, Lsun/reflect/Label;->bind()V

    .line 527
    iget-short v5, p0, Lsun/reflect/MethodAccessorGenerator;->nonPrimitiveParametersBaseIdx:S

    .line 528
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    move v6, v2

    move v7, v4

    :goto_4
    iget-object v2, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    array-length v4, v2

    if-ge v6, v4, :cond_11

    .line 532
    aget-object v8, v2, v6

    .line 533
    invoke-virtual {p0, v8}, Lsun/reflect/MethodAccessorGenerator;->typeSizeInStackSlots(Ljava/lang/Class;)I

    move-result v2

    int-to-byte v2, v2

    add-int/2addr v2, v7

    int-to-byte v7, v2

    .line 534
    if-eqz v1, :cond_2

    .line 535
    invoke-virtual {v1}, Lsun/reflect/Label;->bind()V

    .line 536
    const/4 v1, 0x0

    .line 541
    :cond_2
    iget-boolean v2, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v2, :cond_a

    .line 542
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_1()V

    .line 546
    :goto_5
    int-to-short v2, v6

    invoke-virtual {v3, v2}, Lsun/reflect/ClassFileAssembler;->opc_sipush(S)V

    .line 547
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aaload()V

    .line 548
    invoke-static {v8}, Lsun/reflect/MethodAccessorGenerator;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 552
    iget-boolean v1, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v1, :cond_b

    .line 553
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_astore_2()V

    .line 575
    :goto_6
    const/4 v1, 0x0

    .line 576
    new-instance v4, Lsun/reflect/Label;

    invoke-direct {v4}, Lsun/reflect/Label;-><init>()V

    .line 578
    const/4 v2, 0x0

    :goto_7
    sget-object v9, Lsun/reflect/MethodAccessorGenerator;->primitiveTypes:[Ljava/lang/Class;

    array-length v9, v9

    if-ge v2, v9, :cond_e

    .line 579
    sget-object v9, Lsun/reflect/MethodAccessorGenerator;->primitiveTypes:[Ljava/lang/Class;

    aget-object v9, v9, v2

    .line 580
    invoke-static {v9, v8}, Lsun/reflect/MethodAccessorGenerator;->canWidenTo(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 581
    if-eqz v1, :cond_3

    .line 582
    invoke-virtual {v1}, Lsun/reflect/Label;->bind()V

    .line 585
    :cond_3
    iget-boolean v1, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v1, :cond_c

    .line 586
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_2()V

    .line 590
    :goto_8
    invoke-virtual {p0, v9}, Lsun/reflect/MethodAccessorGenerator;->indexForPrimitiveType(Ljava/lang/Class;)S

    move-result v1

    invoke-virtual {v3, v1}, Lsun/reflect/ClassFileAssembler;->opc_instanceof(S)V

    .line 591
    new-instance v1, Lsun/reflect/Label;

    invoke-direct {v1}, Lsun/reflect/Label;-><init>()V

    .line 592
    invoke-virtual {v3, v1}, Lsun/reflect/ClassFileAssembler;->opc_ifeq(Lsun/reflect/Label;)V

    .line 593
    iget-boolean v10, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v10, :cond_d

    .line 594
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_2()V

    .line 598
    :goto_9
    invoke-virtual {p0, v9}, Lsun/reflect/MethodAccessorGenerator;->indexForPrimitiveType(Ljava/lang/Class;)S

    move-result v10

    invoke-virtual {v3, v10}, Lsun/reflect/ClassFileAssembler;->opc_checkcast(S)V

    .line 599
    invoke-virtual {p0, v9}, Lsun/reflect/MethodAccessorGenerator;->unboxingMethodForPrimitiveType(Ljava/lang/Class;)S

    move-result v10

    .line 601
    invoke-virtual {p0, v9}, Lsun/reflect/MethodAccessorGenerator;->typeSizeInStackSlots(Ljava/lang/Class;)I

    move-result v11

    .line 599
    const/4 v12, 0x0

    invoke-virtual {v3, v10, v12, v11}, Lsun/reflect/ClassFileAssembler;->opc_invokevirtual(SII)V

    .line 602
    invoke-static {v3, v9, v8}, Lsun/reflect/MethodAccessorGenerator;->emitWideningBytecodeForPrimitiveConversion(Lsun/reflect/ClassFileAssembler;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 605
    invoke-virtual {v3, v4}, Lsun/reflect/ClassFileAssembler;->opc_goto(Lsun/reflect/Label;)V

    .line 578
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 432
    :cond_5
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lsun/reflect/ClassFileAssembler;->setMaxLocals(I)V

    goto/16 :goto_0

    .line 445
    :cond_6
    iget-object v0, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    invoke-static {v0}, Lsun/reflect/MethodAccessorGenerator;->isPrimitive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    iget-object v0, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lsun/reflect/MethodAccessorGenerator;->indexForPrimitiveType(Ljava/lang/Class;)S

    move-result v0

    invoke-virtual {v3, v0}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 452
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_dup()V

    .line 460
    :cond_7
    invoke-virtual {p0}, Lsun/reflect/MethodAccessorGenerator;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_1()V

    .line 471
    new-instance v0, Lsun/reflect/Label;

    invoke-direct {v0}, Lsun/reflect/Label;-><init>()V

    .line 472
    invoke-virtual {v3, v0}, Lsun/reflect/ClassFileAssembler;->opc_ifnonnull(Lsun/reflect/Label;)V

    .line 473
    iget-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->nullPointerClass:S

    invoke-virtual {v3, v1}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 474
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_dup()V

    .line 475
    iget-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->nullPointerCtorIdx:S

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 476
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_athrow()V

    .line 477
    invoke-virtual {v0}, Lsun/reflect/Label;->bind()V

    .line 478
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v0

    .line 479
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_1()V

    .line 480
    iget-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->targetClass:S

    invoke-virtual {v3, v1}, Lsun/reflect/ClassFileAssembler;->opc_checkcast(S)V

    goto/16 :goto_1

    .line 505
    :cond_8
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_2()V

    goto/16 :goto_2

    .line 512
    :cond_9
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_2()V

    goto/16 :goto_3

    .line 544
    :cond_a
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_2()V

    goto/16 :goto_5

    .line 555
    :cond_b
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_astore_3()V

    goto/16 :goto_6

    .line 588
    :cond_c
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_3()V

    goto/16 :goto_8

    .line 596
    :cond_d
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aload_3()V

    goto/16 :goto_9

    .line 609
    :cond_e
    if-eqz v1, :cond_f

    .line 618
    invoke-virtual {v1}, Lsun/reflect/Label;->bind()V

    .line 619
    iget-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->illegalArgumentClass:S

    invoke-virtual {v3, v1}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 620
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_dup()V

    .line 621
    iget-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->illegalArgumentCtorIdx:S

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v2, v8}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 622
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_athrow()V

    move-object v1, v4

    move v2, v5

    .line 531
    :goto_a
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v2

    goto/16 :goto_4

    .line 610
    :cond_f
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Must have found at least identity conversion"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_10
    invoke-virtual {v3, v5}, Lsun/reflect/ClassFileAssembler;->opc_checkcast(S)V

    .line 626
    const/4 v2, 0x2

    invoke-static {v5, v2}, Lsun/reflect/MethodAccessorGenerator;->add(SS)S

    move-result v2

    goto :goto_a

    .line 631
    :cond_11
    if-eqz v1, :cond_12

    .line 632
    invoke-virtual {v1}, Lsun/reflect/Label;->bind()V

    .line 635
    :cond_12
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v1

    .line 638
    iget-boolean v2, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-eqz v2, :cond_14

    .line 639
    iget-short v2, p0, Lsun/reflect/MethodAccessorGenerator;->targetMethodRef:S

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v7, v4}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 659
    :goto_b
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v2

    .line 661
    iget-boolean v4, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    if-nez v4, :cond_13

    .line 663
    iget-object v4, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    invoke-static {v4}, Lsun/reflect/MethodAccessorGenerator;->isPrimitive(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 664
    iget-object v4, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Lsun/reflect/MethodAccessorGenerator;->ctorIndexForPrimitiveType(Ljava/lang/Class;)S

    move-result v4

    iget-object v5, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    .line 665
    invoke-virtual {p0, v5}, Lsun/reflect/MethodAccessorGenerator;->typeSizeInStackSlots(Ljava/lang/Class;)I

    move-result v5

    .line 664
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 671
    :cond_13
    :goto_c
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_areturn()V

    .line 679
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v5

    .line 682
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 683
    iget-short v4, p0, Lsun/reflect/MethodAccessorGenerator;->toStringIdx:S

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 684
    iget-short v4, p0, Lsun/reflect/MethodAccessorGenerator;->illegalArgumentClass:S

    invoke-virtual {v3, v4}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 685
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_dup_x1()V

    .line 686
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_swap()V

    .line 687
    iget-short v4, p0, Lsun/reflect/MethodAccessorGenerator;->illegalArgumentStringCtorIdx:S

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 688
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_athrow()V

    .line 690
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v6

    .line 693
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 694
    iget-short v4, p0, Lsun/reflect/MethodAccessorGenerator;->invocationTargetClass:S

    invoke-virtual {v3, v4}, Lsun/reflect/ClassFileAssembler;->opc_new(S)V

    .line 695
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_dup_x1()V

    .line 696
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_swap()V

    .line 697
    iget-short v4, p0, Lsun/reflect/MethodAccessorGenerator;->invocationTargetCtorIdx:S

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v8}, Lsun/reflect/ClassFileAssembler;->opc_invokespecial(SII)V

    .line 698
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_athrow()V

    .line 704
    new-instance v4, Lsun/reflect/ClassFileAssembler;

    invoke-direct {v4}, Lsun/reflect/ClassFileAssembler;-><init>()V

    .line 706
    invoke-virtual {v4, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 707
    invoke-virtual {v4, v1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 708
    invoke-virtual {v4, v5}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 709
    iget-short v7, p0, Lsun/reflect/MethodAccessorGenerator;->classCastClass:S

    invoke-virtual {v4, v7}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 711
    invoke-virtual {v4, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 712
    invoke-virtual {v4, v1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 713
    invoke-virtual {v4, v5}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 714
    iget-short v0, p0, Lsun/reflect/MethodAccessorGenerator;->nullPointerClass:S

    invoke-virtual {v4, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 716
    invoke-virtual {v4, v1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 717
    invoke-virtual {v4, v2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 718
    invoke-virtual {v4, v6}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 719
    iget-short v0, p0, Lsun/reflect/MethodAccessorGenerator;->throwableClass:S

    invoke-virtual {v4, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 721
    iget-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->invokeIdx:S

    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->getMaxLocals()S

    move-result v2

    const/4 v0, 0x1

    new-array v5, v0, [S

    const/4 v0, 0x0

    iget-short v6, p0, Lsun/reflect/MethodAccessorGenerator;->invocationTargetClass:S

    aput-short v6, v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsun/reflect/MethodAccessorGenerator;->emitMethod(SILsun/reflect/ClassFileAssembler;Lsun/reflect/ClassFileAssembler;[S)V

    .line 723
    return-void

    .line 641
    :cond_14
    invoke-virtual {p0}, Lsun/reflect/MethodAccessorGenerator;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 642
    iget-short v2, p0, Lsun/reflect/MethodAccessorGenerator;->targetMethodRef:S

    iget-object v4, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    .line 644
    invoke-virtual {p0, v4}, Lsun/reflect/MethodAccessorGenerator;->typeSizeInStackSlots(Ljava/lang/Class;)I

    move-result v4

    .line 642
    invoke-virtual {v3, v2, v7, v4}, Lsun/reflect/ClassFileAssembler;->opc_invokestatic(SII)V

    goto/16 :goto_b

    .line 646
    :cond_15
    invoke-direct {p0}, Lsun/reflect/MethodAccessorGenerator;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 647
    iget-short v2, p0, Lsun/reflect/MethodAccessorGenerator;->targetMethodRef:S

    iget-object v4, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    .line 650
    invoke-virtual {p0, v4}, Lsun/reflect/MethodAccessorGenerator;->typeSizeInStackSlots(Ljava/lang/Class;)I

    move-result v4

    .line 647
    invoke-virtual {v3, v2, v7, v7, v4}, Lsun/reflect/ClassFileAssembler;->opc_invokeinterface(SIBI)V

    goto/16 :goto_b

    .line 652
    :cond_16
    iget-short v2, p0, Lsun/reflect/MethodAccessorGenerator;->targetMethodRef:S

    iget-object v4, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    .line 654
    invoke-virtual {p0, v4}, Lsun/reflect/MethodAccessorGenerator;->typeSizeInStackSlots(Ljava/lang/Class;)I

    move-result v4

    .line 652
    invoke-virtual {v3, v2, v7, v4}, Lsun/reflect/ClassFileAssembler;->opc_invokevirtual(SII)V

    goto/16 :goto_b

    .line 667
    :cond_17
    iget-object v4, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_13

    .line 668
    invoke-virtual {v3}, Lsun/reflect/ClassFileAssembler;->opc_aconst_null()V

    goto/16 :goto_c

    .line 422
    :cond_18
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Can\'t handle more than 65535 parameters"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generate(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IZZLjava/lang/Class;)Lsun/reflect/MagicAccessorImpl;
    .registers 19

    .line 136
    invoke-static {}, Lsun/reflect/ByteVectorFactory;->create()Lsun/reflect/ByteVector;

    move-result-object v2

    .line 137
    new-instance v1, Lsun/reflect/ClassFileAssembler;

    invoke-direct {v1, v2}, Lsun/reflect/ClassFileAssembler;-><init>(Lsun/reflect/ByteVector;)V

    iput-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    .line 138
    iput-object p1, p0, Lsun/reflect/MethodAccessorGenerator;->declaringClass:Ljava/lang/Class;

    .line 139
    iput-object p3, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    .line 140
    iput-object p4, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    .line 141
    iput p6, p0, Lsun/reflect/MethodAccessorGenerator;->modifiers:I

    .line 142
    move/from16 v0, p7

    iput-boolean v0, p0, Lsun/reflect/MethodAccessorGenerator;->isConstructor:Z

    .line 143
    move/from16 v0, p8

    iput-boolean v0, p0, Lsun/reflect/MethodAccessorGenerator;->forSerialization:Z

    .line 145
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->emitMagicAndVersion()V

    .line 273
    const/16 v1, 0x2a

    .line 274
    invoke-direct {p0}, Lsun/reflect/MethodAccessorGenerator;->usesPrimitiveTypes()Z

    move-result v3

    .line 275
    if-eqz v3, :cond_0

    .line 276
    const/16 v1, 0x72

    int-to-short v1, v1

    .line 278
    :cond_0
    if-eqz p8, :cond_1

    .line 279
    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    .line 284
    :cond_1
    invoke-direct {p0}, Lsun/reflect/MethodAccessorGenerator;->numNonPrimitiveParameterTypes()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    add-int/2addr v1, v4

    int-to-short v4, v1

    .line 286
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lsun/reflect/MethodAccessorGenerator;->add(SS)S

    move-result v5

    invoke-virtual {v1, v5}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 288
    invoke-static/range {p7 .. p8}, Lsun/reflect/MethodAccessorGenerator;->generateName(ZZ)Ljava/lang/String;

    move-result-object v5

    .line 289
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1, v5}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v6}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v6

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 291
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    iput-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->thisClass:S

    .line 292
    if-eqz p7, :cond_5

    .line 293
    if-eqz p8, :cond_4

    .line 294
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    .line 295
    const-string v6, "sun/reflect/SerializationConstructorAccessorImpl"

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 302
    :goto_0
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v6}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v6

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 303
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    iput-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->superClass:S

    .line 304
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lsun/reflect/MethodAccessorGenerator;->getClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v6}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v6

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 306
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    iput-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->targetClass:S

    .line 307
    const/4 v1, 0x0

    .line 308
    if-eqz p8, :cond_2

    .line 309
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v6, 0x0

    move-object/from16 v0, p9

    invoke-static {v0, v6}, Lsun/reflect/MethodAccessorGenerator;->getClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v6}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v6

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 311
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    .line 308
    :cond_2
    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v6, p2}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 314
    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-direct {p0}, Lsun/reflect/MethodAccessorGenerator;->buildInternalSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-object v7, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v7}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lsun/reflect/MethodAccessorGenerator;->sub(SS)S

    move-result v7

    iget-object v8, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v8}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v8

    invoke-virtual {v6, v7, v8}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolNameAndType(SS)V

    .line 316
    invoke-direct {p0}, Lsun/reflect/MethodAccessorGenerator;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 317
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v6, p0, Lsun/reflect/MethodAccessorGenerator;->targetClass:S

    iget-object v7, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v7}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v7

    invoke-virtual {v1, v6, v7}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolInterfaceMethodref(SS)V

    .line 325
    :goto_1
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    iput-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->targetMethodRef:S

    .line 326
    if-eqz p7, :cond_8

    .line 327
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v6, "newInstance"

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 331
    :goto_2
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    iput-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->invokeIdx:S

    .line 332
    if-eqz p7, :cond_9

    .line 333
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v6, "([Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 338
    :goto_3
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    iput-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->invokeDescriptorIdx:S

    .line 341
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    const/4 v6, 0x2

    invoke-static {v1, v6}, Lsun/reflect/MethodAccessorGenerator;->add(SS)S

    move-result v1

    iput-short v1, p0, Lsun/reflect/MethodAccessorGenerator;->nonPrimitiveParametersBaseIdx:S

    .line 342
    const/4 v1, 0x0

    :goto_4
    array-length v6, p3

    if-ge v1, v6, :cond_a

    .line 343
    aget-object v6, p3, v1

    .line 344
    invoke-static {v6}, Lsun/reflect/MethodAccessorGenerator;->isPrimitive(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 345
    iget-object v7, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lsun/reflect/MethodAccessorGenerator;->getClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    .line 346
    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-object v7, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v7}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v7

    invoke-virtual {v6, v7}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolClass(S)V

    .line 342
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 297
    :cond_4
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v6, "sun/reflect/ConstructorAccessorImpl"

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_5
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v6, "sun/reflect/MethodAccessorImpl"

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_6
    if-eqz p8, :cond_7

    .line 320
    iget-object v6, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-object v7, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v7}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v7

    invoke-virtual {v6, v1, v7}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    goto :goto_1

    .line 322
    :cond_7
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v6, p0, Lsun/reflect/MethodAccessorGenerator;->targetClass:S

    iget-object v7, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v7}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v7

    invoke-virtual {v1, v6, v7}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolMethodref(SS)V

    goto/16 :goto_1

    .line 329
    :cond_8
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const-string v6, "invoke"

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    goto :goto_2

    .line 335
    :cond_9
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    .line 336
    const-string v6, "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v1, v6}, Lsun/reflect/ClassFileAssembler;->emitConstantPoolUTF8(Ljava/lang/String;)V

    goto :goto_3

    .line 351
    :cond_a
    invoke-virtual {p0}, Lsun/reflect/MethodAccessorGenerator;->emitCommonConstantPoolEntries()V

    .line 354
    if-eqz v3, :cond_b

    .line 355
    invoke-virtual {p0}, Lsun/reflect/MethodAccessorGenerator;->emitBoxingContantPoolEntries()V

    .line 358
    :cond_b
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v1}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v1

    if-ne v1, v4, :cond_c

    .line 364
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 367
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v3, p0, Lsun/reflect/MethodAccessorGenerator;->thisClass:S

    invoke-virtual {v1, v3}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 370
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v3, p0, Lsun/reflect/MethodAccessorGenerator;->superClass:S

    invoke-virtual {v1, v3}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 373
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 376
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 379
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 381
    invoke-virtual {p0}, Lsun/reflect/MethodAccessorGenerator;->emitConstructor()V

    .line 382
    invoke-direct {p0}, Lsun/reflect/MethodAccessorGenerator;->emitInvoke()V

    .line 385
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 388
    invoke-interface {v2}, Lsun/reflect/ByteVector;->trim()V

    .line 389
    invoke-interface {v2}, Lsun/reflect/ByteVector;->getData()[B

    move-result-object v1

    .line 395
    new-instance v2, Lsun/reflect/MethodAccessorGenerator$1;

    invoke-direct {v2, p0, v5, v1, p1}, Lsun/reflect/MethodAccessorGenerator$1;-><init>(Lsun/reflect/MethodAccessorGenerator;Ljava/lang/String;[BLjava/lang/Class;)V

    .line 396
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/reflect/MagicAccessorImpl;

    .line 395
    return-object v1

    .line 359
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjust this code (cpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/reflect/MethodAccessorGenerator;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->cpi()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numCPEntries = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static generateName(ZZ)Ljava/lang/String;
    .registers 5

    const-class v0, Lsun/reflect/MethodAccessorGenerator;

    monitor-enter v0

    .line 768
    if-eqz p0, :cond_1

    .line 769
    if-eqz p1, :cond_0

    .line 770
    :try_start_0
    sget v0, Lsun/reflect/MethodAccessorGenerator;->serializationConstructorSymnum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/reflect/MethodAccessorGenerator;->serializationConstructorSymnum:I

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sun/reflect/GeneratedSerializationConstructorAccessor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const-class v1, Lsun/reflect/MethodAccessorGenerator;

    monitor-exit v1

    .line 778
    :goto_0
    return-object v0

    .line 773
    :cond_0
    :try_start_1
    sget v0, Lsun/reflect/MethodAccessorGenerator;->constructorSymnum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/reflect/MethodAccessorGenerator;->constructorSymnum:I

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sun/reflect/GeneratedConstructorAccessor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    const-class v1, Lsun/reflect/MethodAccessorGenerator;

    monitor-exit v1

    goto :goto_0

    .line 777
    :cond_1
    :try_start_2
    sget v0, Lsun/reflect/MethodAccessorGenerator;->methodSymnum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/reflect/MethodAccessorGenerator;->methodSymnum:I

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sun/reflect/GeneratedMethodAccessor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    const-class v1, Lsun/reflect/MethodAccessorGenerator;

    monitor-exit v1

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    const-class v1, Lsun/reflect/MethodAccessorGenerator;

    monitor-exit v1

    throw v0
.end method

.method private isInterface()Z
    .registers 2

    .line 751
    iget-object v0, p0, Lsun/reflect/MethodAccessorGenerator;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method private numNonPrimitiveParameterTypes()I
    .registers 5

    const/4 v1, 0x0

    .line 741
    move v0, v1

    move v2, v1

    .line 742
    :goto_0
    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 743
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    add-int/lit8 v0, v0, 0x1

    .line 742
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 747
    :cond_1
    return v0
.end method

.method private usesPrimitiveTypes()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 729
    iget-object v0, p0, Lsun/reflect/MethodAccessorGenerator;->returnType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 737
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 732
    :goto_1
    iget-object v3, p0, Lsun/reflect/MethodAccessorGenerator;->parameterTypes:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 733
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 734
    goto :goto_0

    .line 732
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public generateConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;I)Lsun/reflect/ConstructorAccessor;
    .registers 15

    .line 94
    const-string v2, "<init>"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v9}, Lsun/reflect/MethodAccessorGenerator;->generate(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IZZLjava/lang/Class;)Lsun/reflect/MagicAccessorImpl;

    move-result-object v0

    check-cast v0, Lsun/reflect/ConstructorAccessor;

    return-object v0
.end method

.method public generateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;I)Lsun/reflect/MethodAccessor;
    .registers 17

    .line 77
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lsun/reflect/MethodAccessorGenerator;->generate(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IZZLjava/lang/Class;)Lsun/reflect/MagicAccessorImpl;

    move-result-object v0

    check-cast v0, Lsun/reflect/MethodAccessor;

    return-object v0
.end method

.method public generateSerializationConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;ILjava/lang/Class;)Lsun/reflect/SerializationConstructorAccessorImpl;
    .registers 16

    const/4 v7, 0x1

    .line 113
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 114
    const-string v2, "<init>"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v8, v7

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lsun/reflect/MethodAccessorGenerator;->generate(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IZZLjava/lang/Class;)Lsun/reflect/MagicAccessorImpl;

    move-result-object v0

    check-cast v0, Lsun/reflect/SerializationConstructorAccessorImpl;

    .line 113
    return-object v0
.end method
