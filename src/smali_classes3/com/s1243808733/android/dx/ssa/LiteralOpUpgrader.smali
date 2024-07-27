.class public Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"


# instance fields
.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-void
.end method

.method static synthetic access$1000002(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->isConstIntZeroOrKnownNull(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000007(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->tryReplacingWithConstant(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000008(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method private static isConstIntZeroOrKnownNull(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 7

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 71
    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-eqz v2, :cond_1

    .line 72
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 73
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")V"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 55
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->run()V

    return-void
.end method

.method private replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;",
            "I",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    .line 192
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {p3, v0, p2, p4}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 193
    if-nez p4, :cond_0

    .line 195
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 201
    :goto_0
    new-instance v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 203
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0
.end method

.method private run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getAdvice()Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v2, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;-><init>(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    return-void
.end method

.method private tryReplacingWithConstant(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 158
    sget-object v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 162
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v2, 0x38

    if-ne v0, v2, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 168
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {p0, v0, v2, v5, v1}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 171
    :cond_0
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
