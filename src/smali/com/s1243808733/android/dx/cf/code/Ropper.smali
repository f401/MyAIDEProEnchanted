.class public final Lcom/s1243808733/android/dx/cf/code/Ropper;
.super Ljava/lang/Object;
.source "Ropper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;,
        Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionHandlerSetup;,
        Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;,
        Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;,
        Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;,
        Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;
    }
.end annotation


# static fields
.field private static final PARAM_ASSIGNMENT:I = -0x1

.field private static final RETURN:I = -0x2

.field private static final SPECIAL_LABEL_COUNT:I = 0x7

.field private static final SYNCH_CATCH_1:I = -0x6

.field private static final SYNCH_CATCH_2:I = -0x7

.field private static final SYNCH_RETURN:I = -0x3

.field private static final SYNCH_SETUP_1:I = -0x4

.field private static final SYNCH_SETUP_2:I = -0x5


# instance fields
.field private final blocks:Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

.field private final catchInfos:[Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

.field private final exceptionSetupLabelAllocator:Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

.field private hasSubroutines:Z

.field private final machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

.field private final maxLabel:I

.field private final maxLocals:I

.field private final method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/BasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final resultSubroutines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/util/IntList;",
            ">;"
        }
    .end annotation
.end field

.field private final sim:Lcom/s1243808733/android/dx/cf/code/Simulator;

.field private final startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

.field private final subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

.field private synchNeedsExceptionHandler:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetexceptionSetupLabelAllocator(Lcom/s1243808733/android/dx/cf/code/Ropper;)Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->exceptionSetupLabelAllocator:Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmaxLabel(Lcom/s1243808733/android/dx/cf/code/Ropper;)I
    .locals 1

    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLabel:I

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetmethod(Lcom/s1243808733/android/dx/cf/code/Ropper;)Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fputhasSubroutines(Lcom/s1243808733/android/dx/cf/code/Ropper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->hasSubroutines:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddOrReplaceBlockNoDelete(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addOrReplaceBlockNoDelete(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$mfilterMoveReturnAddressInsns(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/InsnList;)Lcom/s1243808733/android/dx/rop/code/InsnList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->filterMoveReturnAddressInsns(Lcom/s1243808733/android/dx/rop/code/InsnList;)Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$misSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isSubroutineCaller(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$mlabelToBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .locals 1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mmergeAndWorkAsNecessary(Lcom/s1243808733/android/dx/cf/code/Ropper;IILcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/s1243808733/android/dx/cf/code/Ropper;->mergeAndWorkAsNecessary(IILcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msubroutineFromRetBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;
    .locals 1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutineFromRetBlock(I)Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)V
    .locals 7

    const/4 v6, 0x0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 378
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 379
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->identifyBlocks(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->blocks:Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    .line 380
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->getMaxLabel()I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLabel:I

    .line 381
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getMaxLocals()I

    move-result v2

    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLocals:I

    .line 382
    new-instance v3, Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;)V

    iput-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    .line 383
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-direct {v4, v3, p1, p4}, Lcom/s1243808733/android/dx/cf/code/Simulator;-><init>(Lcom/s1243808733/android/dx/cf/code/Machine;Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/dex/DexOptions;)V

    iput-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->sim:Lcom/s1243808733/android/dx/cf/code/Simulator;

    .line 384
    new-array v3, v1, [Lcom/s1243808733/android/dx/cf/code/Frame;

    iput-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

    .line 385
    new-array v4, v1, [Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    iput-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    .line 393
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    .line 394
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    .line 397
    new-array v0, v1, [Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->catchInfos:[Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

    .line 398
    iput-boolean v6, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->synchNeedsExceptionHandler:Z

    .line 404
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getMaxStack()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(II)V

    aput-object v0, v3, v6

    .line 405
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->exceptionSetupLabelAllocator:Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/IntList;->throwIfMutable()V

    .line 594
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addExceptionSetupBlocks()V
    .locals 11

    const/4 v2, 0x0

    .line 1296
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->catchInfos:[Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->catchInfos:[Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;->getSetups()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionHandlerSetup;

    .line 1301
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getFirstInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v5

    .line 1302
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v5

    .line 1303
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/InsnList;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1305
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getCaughtType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v7

    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveException(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v7

    iget v8, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLocals:I

    .line 1307
    new-instance v9, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getCaughtType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    sget-object v10, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v9, v7, v5, v8, v10}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 1309
    invoke-virtual {v6, v2, v9}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1311
    new-instance v7, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v8, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v9, 0x0

    sget-object v10, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v7, v8, v5, v9, v10}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 1313
    const/4 v5, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1314
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1316
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getLabel()I

    move-result v0

    .line 1318
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1320
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getSubroutines()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addOrReplaceBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 630
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/IntList;->throwIfMutable()V

    .line 632
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    .line 626
    :cond_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->removeBlockAndSpecialSuccessors(I)V

    const/4 v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addOrReplaceBlockNoDelete(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 652
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 663
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/IntList;->throwIfMutable()V

    .line 665
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 659
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    .line 649
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addReturnBlock()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1192
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getReturnOp()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getReturnPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v3

    .line 1203
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v1

    .line 1205
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1206
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v4, v9}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1207
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/Rops;->MONITOR_EXIT:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 1208
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSynchReg()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v6

    sget-object v7, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v5, v0, v3, v6, v7}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 1210
    invoke-virtual {v4, v8, v5}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1211
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1213
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v0

    .line 1214
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v6

    invoke-direct {v5, v1, v4, v6, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1217
    sget-object v1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v5, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 1222
    :goto_1
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v4, v9}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1223
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getSources()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v1

    .line 1226
    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1227
    sget-object v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 1233
    :goto_2
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6, v1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 1234
    invoke-virtual {v4, v8, v5}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1235
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1237
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    sget-object v2, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v3, -0x1

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1238
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    goto :goto_0

    .line 1229
    :cond_1
    invoke-interface {v1, v8}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 1230
    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private addSetupBlocks()V
    .locals 13

    .line 1109
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getLocalVariables()Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v8

    .line 1110
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 1111
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v9

    .line 1113
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v10

    .line 1114
    new-instance v11, Lcom/s1243808733/android/dx/rop/code/InsnList;

    add-int/lit8 v0, v10, 0x1

    invoke-direct {v11, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    :goto_0
    if-ge v7, v10, :cond_1

    .line 1118
    invoke-virtual {v9, v7}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v12

    .line 1120
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v6}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->pcAndIndexToLocal(II)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1122
    invoke-static {v6, v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 1125
    :goto_1
    invoke-static {v12}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveParam(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 1127
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 1128
    invoke-virtual {v11, v7, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1129
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    add-int/2addr v0, v6

    add-int/lit8 v1, v7, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 1123
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-static {v6, v12, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    goto :goto_1

    .line 1132
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v3, 0x0

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {v11, v10, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1134
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1136
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1137
    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v0

    move v6, v0

    .line 1138
    :goto_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v0

    .line 1140
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    invoke-direct {v3, v0, v11, v4, v6}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1141
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    if-eqz v1, :cond_3

    .line 1144
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSynchReg()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 1146
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v0

    const/4 v8, 0x2

    if-eqz v0, :cond_5

    .line 1147
    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->CONST_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 1150
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 1151
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/InsnList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1152
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    move-object v0, v1

    .line 1163
    :goto_3
    const/4 v1, -0x5

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v1

    .line 1164
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1165
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    invoke-direct {v3, v6, v0, v4, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1167
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 1169
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    :goto_4
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1171
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    const/4 v0, 0x0

    new-instance v4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v9}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v5

    sget-object v6, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v4, v5, v2, v9, v6}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {v3, v0, v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1176
    :cond_2
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/Rops;->MONITOR_ENTER:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 1177
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-static {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v4, v0, v2, v5, v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 1179
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v0

    invoke-virtual {v3, v0, v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1180
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1181
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1182
    sget-object v1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    :cond_3
    return-void

    .line 1137
    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_2

    .line 1154
    :cond_5
    new-instance v7, Lcom/s1243808733/android/dx/rop/code/InsnList;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1155
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->MOVE_PARAM_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 1158
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1159
    const/4 v0, 0x1

    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v4, 0x0

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {v7, v0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    move-object v0, v7

    goto/16 :goto_3

    .line 1169
    :cond_6
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private addSynchExceptionHandlerBlock()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1247
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->synchNeedsExceptionHandler:Z

    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 1258
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v7, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 1262
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/InsnList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1263
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveException(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 1265
    invoke-virtual {v2, v7, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1266
    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->MONITOR_EXIT:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 1267
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSynchReg()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v4, v3, v0, v5, v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 1269
    invoke-virtual {v2, v8, v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1270
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1272
    const/4 v3, -0x7

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v3

    .line 1273
    const/4 v4, -0x6

    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v4

    .line 1274
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v6

    invoke-direct {v5, v4, v2, v6, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1275
    sget-object v2, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v5, v2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 1277
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v2, v8}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1278
    sget-object v4, Lcom/s1243808733/android/dx/rop/code/Rops;->THROW:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 1279
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v5, v4, v0, v1, v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 1281
    invoke-virtual {v2, v7, v5}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1282
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1284
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    sget-object v1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1285
    sget-object v1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    goto :goto_0
.end method

.method public static convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .locals 3

    .line 348
    :try_start_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Ropper;-><init>(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)V

    .line 349
    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->doit()V

    .line 350
    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getRopMethod()Lcom/s1243808733/android/dx/rop/code/RopMethod;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while working on method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 354
    throw v0
.end method

.method private deleteUnreachableBlocks()V
    .locals 3

    .line 1406
    new-instance v2, Lcom/s1243808733/android/dx/util/IntList;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 1409
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1411
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v0

    new-instance v1, Lcom/s1243808733/android/dx/cf/code/Ropper$2;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/cf/code/Ropper$2;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/util/IntList;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst(ILcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;)V

    .line 1420
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    .line 1422
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doit()V
    .locals 5

    const/4 v4, 0x0

    .line 729
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLabel:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    .line 731
    invoke-static {v0, v4}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 732
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addSetupBlocks()V

    .line 733
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->setFirstFrame()V

    .line 736
    :goto_0
    invoke-static {v0, v4}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v1

    if-gez v1, :cond_1

    .line 751
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addReturnBlock()V

    .line 752
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addSynchExceptionHandlerBlock()V

    .line 753
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addExceptionSetupBlocks()V

    .line 755
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->hasSubroutines:Z

    if-eqz v0, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->inlineSubroutines()V

    :cond_0
    return-void

    .line 740
    :cond_1
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 741
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->blocks:Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move-result-object v2

    .line 742
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

    aget-object v3, v3, v1

    .line 744
    :try_start_0
    invoke-direct {p0, v2, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->processBlock(Lcom/s1243808733/android/dx/cf/code/ByteBlock;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while working on block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 747
    throw v0
.end method

.method private filterMoveReturnAddressInsns(Lcom/s1243808733/android/dx/rop/code/InsnList;)Lcom/s1243808733/android/dx/rop/code/InsnList;
    .locals 7

    const/4 v2, 0x0

    .line 1725
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v4

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_1

    .line 1727
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/Rops;->MOVE_RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-eq v3, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    .line 1747
    :goto_1
    return-object p1

    .line 1737
    :cond_2
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    move v0, v2

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_4

    .line 1741
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    .line 1742
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v5

    sget-object v6, Lcom/s1243808733/android/dx/rop/code/Rops;->MOVE_RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-eq v5, v6, :cond_3

    .line 1743
    invoke-virtual {v1, v0, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 1747
    :cond_4
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    move-object p1, v1

    goto :goto_1
.end method

.method private forEachNonSubBlockDepthFirst(ILcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;)V
    .locals 3

    .line 1759
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLabel:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v0, p2, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst0(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;Ljava/util/BitSet;)V

    return-void
.end method

.method private forEachNonSubBlockDepthFirst0(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;Ljava/util/BitSet;)V
    .locals 5

    .line 1773
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;->visitBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    .line 1774
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    .line 1776
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 1777
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 1780
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 1782
    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1797
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1786
    :cond_1
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isSubroutineCaller(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-gtz v1, :cond_0

    .line 1795
    :cond_2
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1797
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-direct {p0, v0, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst0(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;Ljava/util/BitSet;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getAvailableLabel()I
    .locals 3

    .line 481
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getMinimumUnreservedLabel()I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 484
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMinimumUnreservedLabel()I
    .locals 2

    .line 457
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLabel:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private getNormalRegCount()I
    .locals 2

    .line 520
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLocals:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getMaxStack()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRopMethod()Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 709
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 711
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v3, v1, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->setImmutable()V

    .line 722
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;-><init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;I)V

    return-object v0
.end method

.method private getSpecialLabel(I)I
    .locals 2

    .line 443
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->maxLabel:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v1

    add-int/2addr v0, v1

    xor-int/lit8 v1, p1, -0x1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSynchReg()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 2

    const/4 v0, 0x1

    .line 538
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getNormalRegCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 539
    :goto_0
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private inlineSubroutines()V
    .locals 8

    const/4 v3, 0x0

    .line 1346
    new-instance v4, Lcom/s1243808733/android/dx/util/IntList;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 1355
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/Ropper$1;

    invoke-direct {v0, p0, v4}, Lcom/s1243808733/android/dx/cf/code/Ropper$1;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/util/IntList;)V

    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst(ILcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;)V

    .line 1368
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getAvailableLabel()I

    move-result v1

    .line 1369
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1372
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1375
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    if-nez v0, :cond_1

    .line 1381
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1380
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/util/IntList;

    .line 1381
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1388
    :cond_2
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_3

    .line 1390
    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 1391
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;

    new-instance v6, Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getAvailableLabel()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;-><init>(I)V

    invoke-direct {v2, p0, v6, v5}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;Ljava/util/ArrayList;)V

    .line 1394
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->inlineSubroutineCalledFrom(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1398
    :cond_3
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->deleteUnreachableBlocks()V

    return-void
.end method

.method private isStatic()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubroutineCaller(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1333
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 1334
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1338
    :goto_0
    return v1

    .line 1336
    :cond_0
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    .line 1338
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v2, v3, v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isSynchronized()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .locals 2

    .line 570
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 577
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    return-object v0

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no such label "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private labelToResultIndex(I)I
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 553
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 554
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private mergeAndWorkAsNecessary(IILcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    .line 1082
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->getStartBlock()I

    move-result v0

    .line 1081
    invoke-virtual {v1, p4, v0, p2}, Lcom/s1243808733/android/dx/cf/code/Frame;->mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Frame;II)Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object v0

    .line 1084
    :goto_0
    if-eq v0, v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

    aput-object v0, v1, p1

    .line 1088
    invoke-static {p5, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 1098
    :cond_0
    :goto_1
    return-void

    .line 1084
    :cond_1
    invoke-virtual {v1, p4}, Lcom/s1243808733/android/dx/cf/code/Frame;->mergeWith(Lcom/s1243808733/android/dx/cf/code/Frame;)Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object v0

    goto :goto_0

    .line 1088
    :cond_2
    if-eqz p3, :cond_3

    .line 1094
    invoke-virtual {p4, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Frame;->makeNewSubroutineStartFrame(II)Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1098
    :goto_2
    invoke-static {p5, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    goto :goto_1

    .line 1096
    :cond_3
    aput-object p4, v0, p1

    goto :goto_2
.end method

.method private processBlock(Lcom/s1243808733/android/dx/cf/code/ByteBlock;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    .locals 23

    .line 781
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v20

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual/range {v20 .. v20}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->toRopCatchList()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->startBlock(Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Lcom/s1243808733/android/dx/cf/code/Frame;->copy()Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object v6

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->sim:Lcom/s1243808733/android/dx/cf/code/Simulator;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6}, Lcom/s1243808733/android/dx/cf/code/Simulator;->simulate(Lcom/s1243808733/android/dx/cf/code/ByteBlock;Lcom/s1243808733/android/dx/cf/code/Frame;)V

    .line 790
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/Frame;->setImmutable()V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getExtraBlockCount()I

    move-result v15

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getInsns()Ljava/util/ArrayList;

    move-result-object v21

    .line 794
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 801
    invoke-virtual/range {v20 .. v20}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v13

    .line 802
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr()Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_1

    .line 814
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    aget-object v5, v4, v2

    if-nez v5, :cond_0

    .line 817
    new-instance v5, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;I)V

    aput-object v5, v4, v2

    .line 821
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    aget-object v4, v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->addCallerBlock(I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    aget-object v5, v4, v2

    const/4 v2, 0x1

    move-object v8, v3

    .line 857
    :goto_0
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v9

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_5

    .line 860
    invoke-virtual {v8, v10}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 862
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v4

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/cf/code/Ropper;->mergeAndWorkAsNecessary(IILcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 824
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasRet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getReturnAddress()Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    move-result-object v2

    .line 832
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->getSubroutineAddress()I

    move-result v2

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    aget-object v4, v3, v2

    if-nez v4, :cond_2

    .line 835
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2, v5}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;II)V

    aput-object v4, v3, v2

    .line 841
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    aget-object v2, v4, v2

    .line 843
    move-object/from16 v0, p3

    invoke-virtual {v2, v6, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->mergeToSuccessors(Lcom/s1243808733/android/dx/cf/code/Frame;[I)V

    .line 845
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    const/4 v5, 0x0

    move-object v8, v3

    goto :goto_0

    .line 838
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->addRetBlock(I)V

    goto :goto_2

    .line 846
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->wereCatchesUsed()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    move v2, v13

    move-object v8, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    move-object v8, v3

    goto :goto_0

    .line 862
    :catch_0
    move-exception v2

    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "...while merging to block "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 866
    throw v2

    :cond_5
    if-nez v9, :cond_8

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 880
    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    const/4 v2, 0x1

    move v7, v2

    :goto_3
    if-nez v7, :cond_9

    const/4 v2, -0x1

    move v3, v2

    .line 889
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->canThrow()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move/from16 v19, v2

    :goto_5
    if-nez v19, :cond_6

    if-eqz v13, :cond_b

    .line 910
    :cond_6
    new-instance v5, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v5, v7}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v17, v2

    move/from16 v18, v4

    :goto_6
    move/from16 v0, v17

    if-ge v0, v13, :cond_d

    .line 912
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v2

    .line 913
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v22

    .line 914
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v8

    .line 916
    sget-object v2, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_c

    const/4 v2, 0x1

    .line 918
    :goto_7
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->makeExceptionHandlerStartFrame(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object v11

    .line 921
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/s1243808733/android/dx/cf/code/Ropper;->mergeAndWorkAsNecessary(IILcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_1 .. :try_end_1} :catch_1

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->catchInfos:[Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

    aget-object v4, v4, v8

    if-nez v4, :cond_7

    .line 934
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo-IA;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->catchInfos:[Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;

    aput-object v4, v7, v8

    .line 937
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/s1243808733/android/dx/cf/code/Ropper$CatchInfo;->getSetup(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionHandlerSetup;

    move-result-object v4

    .line 942
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getLabel()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v4, v17, 0x1

    or-int v2, v2, v18

    move/from16 v17, v4

    move/from16 v18, v2

    goto :goto_6

    :cond_8
    move v7, v9

    move-object v4, v8

    .line 880
    goto/16 :goto_3

    .line 889
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->machine:Lcom/s1243808733/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getPrimarySuccessorIndex()I

    move-result v2

    if-ltz v2, :cond_1a

    .line 891
    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    move v3, v2

    goto/16 :goto_4

    .line 889
    :cond_a
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_5

    :cond_b
    move-object v2, v4

    .line 975
    :goto_8
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v10

    move v7, v15

    move v8, v3

    move/from16 v5, v16

    move-object v4, v2

    :goto_9
    if-lez v7, :cond_14

    add-int/lit8 v9, v5, -0x1

    .line 987
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 989
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_11

    const/4 v3, 0x1

    move v5, v3

    .line 991
    :goto_a
    if-eqz v5, :cond_12

    const/4 v3, 0x2

    :goto_b
    new-instance v11, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v11, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 994
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    if-eqz v5, :cond_13

    .line 997
    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 998
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    sget-object v12, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v5, v3, v2, v14, v12}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 997
    const/4 v2, 0x1

    invoke-virtual {v11, v2, v5}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 1004
    invoke-static {v8}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 1006
    :goto_c
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1008
    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getAvailableLabel()I

    move-result v3

    .line 1009
    new-instance v5, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-direct {v5, v3, v11, v2, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1012
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/Frame;->getSubroutines()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 1014
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    .line 1015
    invoke-virtual {v4, v10, v3}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 1016
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    add-int/lit8 v2, v7, -0x1

    move v7, v2

    move v8, v3

    move v5, v9

    goto :goto_9

    .line 916
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 942
    :catch_1
    move-exception v2

    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...while merging exception to block "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 924
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 926
    throw v2

    :cond_d
    if-eqz v19, :cond_f

    if-nez v18, :cond_f

    .line 953
    const/4 v2, -0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 954
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/cf/code/Ropper;->synchNeedsExceptionHandler:Z

    sub-int v2, v16, v15

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_d
    move/from16 v0, v16

    if-ge v4, v0, :cond_f

    .line 957
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 958
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->canThrow()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 959
    sget-object v7, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v2, v7}, Lcom/s1243808733/android/dx/rop/code/Insn;->withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    .line 960
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_d

    :cond_f
    if-ltz v3, :cond_10

    .line 966
    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 969
    :cond_10
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    move-object v2, v5

    goto/16 :goto_8

    .line 989
    :cond_11
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_a

    .line 991
    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_13
    move-object v2, v4

    .line 1004
    goto/16 :goto_c

    .line 1016
    :cond_14
    if-nez v5, :cond_16

    move-object v2, v14

    .line 1020
    :goto_e
    if-eqz v2, :cond_15

    .line 1031
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_19

    :cond_15
    if-nez v2, :cond_17

    .line 1032
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 1034
    :goto_f
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v7, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v9, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v7, v2, v14, v9}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v3, v2

    .line 1044
    :goto_10
    new-instance v7, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v7, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    const/4 v2, 0x0

    move v5, v2

    :goto_11
    if-ge v5, v3, :cond_18

    .line 1046
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v7, v5, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_11

    .line 1020
    :cond_16
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/Insn;

    goto :goto_e

    .line 1033
    :cond_17
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    goto :goto_f

    .line 1048
    :cond_18
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1050
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v3

    invoke-direct {v2, v3, v7, v4, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 1052
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/Frame;->getSubroutines()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Ropper;->addOrReplaceBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)Z

    return-void

    :cond_19
    move v3, v5

    goto :goto_10

    :cond_1a
    move v3, v2

    goto/16 :goto_4
.end method

.method private removeBlockAndSpecialSuccessors(I)V
    .locals 6

    .line 678
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getMinimumUnreservedLabel()I

    move-result v1

    .line 679
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 680
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 681
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    .line 683
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 687
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 689
    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 694
    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/cf/code/Ropper;->removeBlockAndSpecialSuccessors(I)V

    .line 692
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid label "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private setFirstFrame()V
    .locals 3

    const/4 v2, 0x0

    .line 766
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->initializeWithParameters(Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V

    .line 768
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->startFrames:[Lcom/s1243808733/android/dx/cf/code/Frame;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->setImmutable()V

    return-void
.end method

.method private subroutineFromRetBlock(I)Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;
    .locals 3

    .line 1697
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper;->subroutines:[Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1701
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->-$$Nest$fgetretBlocks(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method getFirstTempStackReg()I
    .locals 2

    .line 423
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getNormalRegCount()I

    move-result v0

    .line 424
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
