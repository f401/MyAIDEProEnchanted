.class Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;
.super Lcom/s1243808733/android/dx/rop/code/Insn$BaseVisitor;
.source "RopTranslator.java"


# instance fields
.field private final val$initialRegCount:I

.field private final val$paramSize:I

.field private final val$paramsAreInOrder:[Z


# direct methods
.method constructor <init>([ZII)V
    .registers 4

    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/Insn$BaseVisitor;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;->val$paramsAreInOrder:[Z

    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;->val$initialRegCount:I

    iput p3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;->val$paramSize:I

    return-void
.end method


# virtual methods
.method public visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    .line 196
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;->val$paramsAreInOrder:[Z

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;->val$paramsAreInOrder:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;->val$initialRegCount:I

    iget v4, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$100000000;->val$paramSize:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    aput-boolean v0, v2, v1

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
