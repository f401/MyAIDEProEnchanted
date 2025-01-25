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
    .registers 3

    .line 401
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result p1

    .line 403
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->regCount:I

    if-le p1, v0, :cond_a

    .line 404
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->regCount:I

    :cond_a
    return-void
.end method

.method private visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V
    .registers 5

    .line 381
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 384
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->processReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 387
    :cond_9
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1e

    .line 391
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->processReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1e
    return-void
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

    .line 366
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;)V
    .registers 2

    .line 372
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
    .registers 2

    .line 342
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V
    .registers 2

    .line 336
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V
    .registers 2

    .line 348
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V
    .registers 2

    .line 354
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V
    .registers 2

    .line 360
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->visit(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method
