.class public Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;
.super Ljava/lang/Object;
.source "BytecodeArray.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/BytecodeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseVisitor"
.end annotation


# instance fields
.field private previousOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;->previousOffset:I

    return-void
.end method


# virtual methods
.method public getPreviousOffset()I
    .locals 1

    .line 1355
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;->previousOffset:I

    return v0
.end method

.method public setPreviousOffset(I)V
    .locals 0

    .line 1349
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;->previousOffset:I

    return-void
.end method

.method public visitBranch(IIII)V
    .locals 0

    return-void
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .locals 0

    return-void
.end method

.method public visitInvalid(III)V
    .locals 0

    return-void
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .locals 0

    return-void
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    .locals 0

    return-void
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .locals 0

    return-void
.end method
