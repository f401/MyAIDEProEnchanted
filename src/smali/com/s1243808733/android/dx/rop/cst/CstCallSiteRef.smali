.class public Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;
.super Lcom/s1243808733/android/dx/rop/cst/Constant;
.source "CstCallSiteRef.java"


# instance fields
.field private final id:I

.field private final invokeDynamic:Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;I)V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/Constant;-><init>()V

    if-eqz p1, :cond_a

    .line 45
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->invokeDynamic:Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 46
    iput p2, p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->id:I

    return-void

    .line 43
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "invokeDynamic == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4

    .line 64
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->invokeDynamic:Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->invokeDynamic:Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 69
    :cond_d
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->id:I

    iget p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->id:I

    invoke-static {v0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    return p1
.end method

.method public getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->invokeDynamic:Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v0

    return-object v0
.end method

.method public getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->invokeDynamic:Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->invokeDynamic:Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 58
    const-string v0, "CallSiteRef"

    return-object v0
.end method
