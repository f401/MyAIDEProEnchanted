.class Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;
.super Ljava/lang/Object;
.source "BasicBlockList.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegCountVisitor"
.end annotation


# instance fields
.field private regCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->regCount:I

    return-void
.end method

.method private processReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 401
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v0

    .line 403
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->regCount:I

    if-le v0, v1, :cond_0

    .line 404
    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->regCount:I

    :cond_0
    return-void
.end method

.method private visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/Insn;",
            ")V"
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->processReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 390
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    return-void

    .line 391
    :cond_1
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->processReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRegCount()I
    .registers 2

    .line 330
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->regCount:I

    return v0
.end method

.method public visitFillArrayDataInsn(Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 366
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 372
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 342
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/PlainInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 336
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/SwitchInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 348
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 354
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 360
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method
