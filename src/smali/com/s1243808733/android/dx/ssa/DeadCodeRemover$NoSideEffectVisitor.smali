.class Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;
.super Ljava/lang/Object;
.source "DeadCodeRemover.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoSideEffectVisitor"
.end annotation


# instance fields
.field noSideEffectRegs:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;)V
    .registers 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 3

    .line 248
    invoke-static {p1}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->-$$Nest$smhasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 249
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_13
    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 3

    .line 265
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 266
    invoke-static {p1}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->-$$Nest$smhasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result p1

    if-nez p1, :cond_15

    if-eqz v0, :cond_15

    .line 267
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_15
    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 3

    .line 257
    invoke-static {p1}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->-$$Nest$smhasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 258
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_13
    return-void
.end method
