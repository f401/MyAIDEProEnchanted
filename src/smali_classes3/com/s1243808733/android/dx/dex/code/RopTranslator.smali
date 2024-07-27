.class public final Lcom/s1243808733/android/dx/dex/code/RopTranslator;
.super Ljava/lang/Object;
.source "RopTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;,
        Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;
    }
.end annotation


# instance fields
.field private final addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

.field private final dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field private final locals:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

.field private final method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

.field private order:[I

.field private final output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

.field private final paramSize:I

.field private final paramsAreInOrder:Z

.field private final positionInfo:I

.field private final regCount:I

.field private final translationVisitor:Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)V
    .registers 12

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 123
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 124
    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->positionInfo:I

    .line 125
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->locals:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    .line 126
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    .line 127
    iput p4, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->paramSize:I

    .line 128
    const/4 v0, 0x0

    check-cast v0, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->order:[I

    .line 129
    invoke-static {p1, p4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lcom/s1243808733/android/dx/rop/code/RopMethod;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    .line 131
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    .line 140
    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 142
    if-eqz p3, :cond_0

    .line 149
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getAssignmentCount()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v3

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->regCount:I

    .line 159
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    mul-int/lit8 v3, v1, 0x3

    iget v4, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->regCount:I

    move-object v1, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;-><init>(Lcom/s1243808733/android/dx/dex/DexOptions;IIII)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    .line 161
    if-eqz p3, :cond_2

    .line 162
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-direct {v0, p0, v1, p3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;-><init>(Lcom/s1243808733/android/dx/dex/code/RopTranslator;Lcom/s1243808733/android/dx/dex/code/OutputCollector;Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;

    .line 165
    :goto_1
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->paramSize:I

    goto :goto_0

    .line 165
    :cond_2
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/s1243808733/android/dx/dex/code/RopTranslator;Lcom/s1243808733/android/dx/dex/code/OutputCollector;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;

    goto :goto_1
.end method

.method static synthetic access$1000018(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->getRegs(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000019(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 3

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->getRegs(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/dex/code/BlockAddresses;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->regCount:I

    return v0
.end method

.method static synthetic access$L1000009(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->paramSize:I

    return v0
.end method

.method static synthetic access$L1000010(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    return v0
.end method

.method private static calculateParamsAreInOrder(Lcom/s1243808733/android/dx/rop/code/RopMethod;I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 181
    new-array v0, v1, [Z

    aput-boolean v1, v0, v4

    .line 182
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v1

    .line 189
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;

    invoke-direct {v3, v0, v1, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;-><init>([ZII)V

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V

    .line 203
    aget-boolean v0, v0, v4

    return v0
.end method

.method private static getRegs(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2

    .line 454
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->getRegs(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method private static getRegs(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 6

    const/4 v3, 0x1

    .line 469
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 471
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCommutative()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 482
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 485
    :cond_0
    if-nez p1, :cond_1

    .line 489
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withFirst(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    goto :goto_0
.end method

.method private outputBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/BasicBlock;",
            "I)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 252
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->locals:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->locals:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    new-instance v3, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->setBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 263
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->forEach(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V

    .line 266
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 270
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 271
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    .line 278
    if-ltz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 283
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSecondarySuccessor()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 293
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->reverseBranch(ILcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    sget-object v3, Lcom/s1243808733/android/dx/dex/code/Dops;->GOTO:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 303
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto :goto_0
.end method

.method private outputInstructions()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->order:[I

    .line 228
    array-length v4, v3

    .line 231
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-void

    .line 232
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 233
    array-length v5, v3

    if-ne v0, v5, :cond_1

    const/4 v0, -0x1

    .line 234
    :goto_1
    aget v5, v3, v1

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->outputBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;I)V

    .line 231
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :cond_1
    aget v0, v3, v0

    goto :goto_1
.end method

.method private pickOrder()V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v6

    .line 313
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v7

    .line 314
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    .line 315
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v8

    .line 316
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v9

    move v0, v2

    .line 318
    :goto_0
    if-lt v0, v7, :cond_0

    .line 323
    new-array v10, v7, [I

    .line 336
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v0

    move v4, v2

    .line 338
    :goto_1
    if-ne v0, v5, :cond_2

    .line 436
    if-eq v4, v7, :cond_c

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-static {v8, v1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v6, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v13

    .line 372
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v13

    if-ne v13, v0, :cond_5

    .line 375
    invoke-static {v9, v1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    move v0, v1

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v11

    .line 353
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v12

    move v3, v2

    .line 355
    :goto_2
    if-lt v3, v12, :cond_4

    :cond_3
    move v3, v0

    move v1, v4

    .line 389
    :goto_3
    if-ne v3, v5, :cond_6

    .line 338
    :goto_4
    invoke-static {v8, v2}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    move v4, v1

    goto :goto_1

    .line 356
    :cond_4
    invoke-virtual {v11, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 358
    invoke-static {v9, v1}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v13

    if-nez v13, :cond_3

    .line 366
    invoke-static {v8, v1}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v13

    if-nez v13, :cond_1

    .line 355
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 390
    :cond_6
    invoke-static {v8, v3}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 391
    invoke-static {v9, v3}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 392
    aput v3, v10, v1

    .line 393
    add-int/lit8 v0, v1, 0x1

    .line 395
    invoke-virtual {v6, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v1

    .line 396
    invoke-virtual {v6, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->preferredSuccessorOf(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v3

    .line 398
    if-nez v3, :cond_7

    move v1, v0

    .line 399
    goto :goto_4

    .line 402
    :cond_7
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v3

    .line 403
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v4

    .line 405
    invoke-static {v8, v3}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v11

    if-eqz v11, :cond_8

    move v1, v0

    .line 410
    goto :goto_3

    .line 411
    :cond_8
    if-eq v4, v3, :cond_9

    if-ltz v4, :cond_9

    invoke-static {v8, v4}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    move v1, v0

    .line 416
    goto :goto_3

    .line 422
    :cond_9
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    .line 423
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v11

    move v1, v2

    .line 425
    :goto_5
    if-lt v1, v11, :cond_a

    move v3, v5

    move v1, v0

    goto :goto_3

    .line 426
    :cond_a
    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 427
    invoke-static {v8, v3}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v12

    if-eqz v12, :cond_b

    move v1, v0

    .line 429
    goto :goto_3

    .line 425
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 441
    :cond_c
    iput-object v10, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->order:[I

    return-void
.end method

.method public static translate(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/DalvCode;
    .registers 11

    .line 104
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)V

    .line 106
    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translateAndGetResult()Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-result-object v0

    return-object v0
.end method

.method private translateAndGetResult()Lcom/s1243808733/android/dx/dex/code/DalvCode;
    .registers 5

    .line 212
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->pickOrder()V

    .line 213
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->outputInstructions()V

    .line 215
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->order:[I

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;[ILcom/s1243808733/android/dx/dex/code/BlockAddresses;)V

    .line 218
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/DalvCode;

    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->positionInfo:I

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->getFinisher()Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;-><init>(ILcom/s1243808733/android/dx/dex/code/OutputFinisher;Lcom/s1243808733/android/dx/dex/code/CatchBuilder;)V

    return-object v1
.end method
