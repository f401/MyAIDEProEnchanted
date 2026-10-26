.class public final Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "FillArrayDataInsn.java"


# instance fields
.field private final arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private final initValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/Rop;",
            "Lcom/s1243808733/android/dx/rop/code/SourcePosition;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 56
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    .line 61
    iput-object p5, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "opcode with invalid branchingness: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .locals 0

    .line 90
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitFillArrayDataInsn(Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;)V

    return-void
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 68
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getInitValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 112
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 102
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 103
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->initValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->arrayType:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method
