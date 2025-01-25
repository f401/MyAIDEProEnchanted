.class public interface abstract Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;
.super Ljava/lang/Object;
.source "BytecodeArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/BytecodeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract getPreviousOffset()I
.end method

.method public abstract setPreviousOffset(I)V
.end method

.method public abstract visitBranch(IIII)V
.end method

.method public abstract visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
.end method

.method public abstract visitInvalid(III)V
.end method

.method public abstract visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
.end method

.method public abstract visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
.end method

.method public abstract visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
.end method
