.class public abstract Lcom/s1243808733/android/dx/rop/code/CstInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "CstInsn.java"


# instance fields
.field private final cst:Lcom/s1243808733/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 6

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    if-eqz p5, :cond_8

    .line 46
    iput-object p5, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void

    .line 43
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z
    .registers 3

    .line 71
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 72
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
