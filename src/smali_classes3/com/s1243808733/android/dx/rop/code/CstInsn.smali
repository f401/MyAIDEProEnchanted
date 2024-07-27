.class public abstract Lcom/s1243808733/android/dx/rop/code/CstInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "CstInsn.java"


# instance fields
.field private final cst:Lcom/s1243808733/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 8

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 42
    if-nez p5, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p5, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void
.end method


# virtual methods
.method public contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/CstInsn;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
