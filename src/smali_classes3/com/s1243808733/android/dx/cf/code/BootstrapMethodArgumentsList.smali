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
    .registers 3

    .line 50
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

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

    .line 72
    return-void

    .line 71
    :cond_1
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bad type for bootstrap argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
