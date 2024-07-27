.class public interface Lcom/s1243808733/android/dx/cf/code/Machine;
.super Ljava/lang/Object;
.source "Machine.java"


# virtual methods
.method public abstract auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation
.end method

.method public abstract auxInitValues(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract auxIntArg(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method public abstract auxSwitchArg(Lcom/s1243808733/android/dx/cf/code/SwitchList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/SwitchList;",
            ")V"
        }
    .end annotation
.end method

.method public abstract auxTargetArg(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method public abstract auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearArgs()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
.end method

.method public abstract localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract localInfo(Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation
.end method

.method public abstract localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
            ")V"
        }
    .end annotation
.end method

.method public abstract popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Prototype;",
            ")V"
        }
    .end annotation
.end method

.method public abstract popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation
.end method

.method public abstract popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation
.end method

.method public abstract popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation
.end method

.method public abstract run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "II)V"
        }
    .end annotation
.end method
