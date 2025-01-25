.class public interface abstract Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;
.super Ljava/lang/Object;
.source "Insn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/rop/code/Insn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitFillArrayDataInsn(Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;)V
.end method

.method public abstract visitInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;)V
.end method

.method public abstract visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
.end method

.method public abstract visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V
.end method

.method public abstract visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V
.end method

.method public abstract visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V
.end method

.method public abstract visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V
.end method
