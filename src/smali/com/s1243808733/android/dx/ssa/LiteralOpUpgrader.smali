.class public Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"


# instance fields
.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method static bridge synthetic -$$Nest$mreplacePlainInsn(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryReplacingWithConstant(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->tryReplacingWithConstant(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisConstIntZeroOrKnownNull(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->isConstIntZeroOrKnownNull(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-void
.end method

.method private static isConstIntZeroOrKnownNull(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 5

    .line 70
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p0

    .line 71
    instance-of v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-eqz v0, :cond_16

    .line 72
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 55
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->run()V

    return-void
.end method

.method private replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 13

    .line 191
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {p3, v1, p2, p4}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    if-nez p4, :cond_1c

    .line 195
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object p3

    .line 196
    new-instance p4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p4, v3, p3, v0, p2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    goto :goto_2d

    .line 198
    :cond_1c
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v4

    .line 199
    new-instance p3, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    move-object v2, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    move-object p4, p3

    .line 201
    :goto_2d
    new-instance p2, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 203
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p3

    .line 205
    iget-object p4, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p4, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 206
    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method private run()V
    .registers 4

    .line 82
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getAdvice()Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v2, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;-><init>(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    return-void
.end method

.method private tryReplacingWithConstant(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z
    .registers 8

    .line 149
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    .line 153
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 154
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_71

    .line 155
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_71

    .line 158
    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {p0, p1, v4, v3, v1}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 162
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0x38

    const/4 v3, 0x1

    if-ne v0, v1, :cond_70

    .line 163
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 165
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 168
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v5, v1}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    :cond_70
    return v3

    :cond_71
    return v2
.end method
