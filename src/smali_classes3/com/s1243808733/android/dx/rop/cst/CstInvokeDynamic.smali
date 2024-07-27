.class public final Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;
.super Lcom/s1243808733/android/dx/rop/cst/Constant;
.source "CstInvokeDynamic.java"


# instance fields
.field private final bootstrapMethodIndex:I

.field private callSite:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

.field private declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/Constant;-><init>()V

    .line 66
    iput p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->bootstrapMethodIndex:I

    .line 67
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 68
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->references:Ljava/util/List;

    return-void
.end method

.method public static make(ILcom/s1243808733/android/dx/rop/cst/CstNat;)Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;
    .registers 3

    .line 56
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;-><init>(ILcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-object v0
.end method


# virtual methods
.method public addReference()Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;
    .registers 3

    .line 78
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->references:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;I)V

    .line 79
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->references:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-object v0
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 120
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 121
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->bootstrapMethodIndex:I

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getBootstrapMethodIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 127
    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getDeclaringClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->callSite:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    goto :goto_0
.end method

.method public getBootstrapMethodIndex()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->bootstrapMethodIndex:I

    return v0
.end method

.method public getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->callSite:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    return-object v0
.end method

.method public getDeclaringClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    return-object v0
.end method

.method public getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public getReferences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->references:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public isCategory2()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public setCallSite(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstCallSite;",
            ")V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->callSite:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "already added call site"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    if-nez p1, :cond_1

    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->callSite:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    return-void
.end method

.method public setDeclaringClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            ")V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "already added declaring class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    if-nez p1, :cond_1

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "declaringClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "InvokeDynamic("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v4, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->bootstrapMethodIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 101
    const-string v0, "InvokeDynamic"

    return-object v0
.end method
