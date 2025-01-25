.class public Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "BootstrapMethodArgumentsList.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 4

    .line 61
    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_39

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v0, :cond_39

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-nez v0, :cond_39

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    if-nez v0, :cond_39

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    if-nez v0, :cond_39

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    if-nez v0, :cond_39

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_39

    instance-of v0, p2, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_21

    goto :goto_39

    .line 71
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bad type for bootstrap argument: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_39
    :goto_39
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->set0(ILjava/lang/Object;)V

    return-void
.end method
