.class Lcom/s1243808733/android/dx/dex/code/RopTranslator$1;
.super Lcom/s1243808733/android/dx/rop/code/Insn$BaseVisitor;
.source "RopTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lcom/s1243808733/android/dx/rop/code/RopMethod;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$initialRegCount:I

.field final val$paramSize:I

.field final val$paramsAreInOrder:[Z


# direct methods
.method constructor <init>([ZII)V
    .registers 4

    .line 189
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$1;->val$paramsAreInOrder:[Z

    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$1;->val$initialRegCount:I

    iput p3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$1;->val$paramSize:I

    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/Insn$BaseVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
    .registers 7

    .line 192
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 194
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$1;->val$paramsAreInOrder:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_2e

    iget v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$1;->val$initialRegCount:I

    iget v4, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$1;->val$paramSize:I

    .line 198
    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    if-ne v3, p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    aput-boolean p1, v1, v2

    :cond_31
    return-void
.end method
