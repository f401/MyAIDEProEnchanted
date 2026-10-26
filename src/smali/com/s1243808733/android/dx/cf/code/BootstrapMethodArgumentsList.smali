.class public Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "BootstrapMethodArgumentsList.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 1

    .line 50
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 3

    .line 61
    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->set0(ILjava/lang/Object;)V

    return-void

    .line 71
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad type for bootstrap argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
