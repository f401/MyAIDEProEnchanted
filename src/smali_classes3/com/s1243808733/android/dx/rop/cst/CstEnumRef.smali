.class public final Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;
.super Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
.source "CstEnumRef.java"


# instance fields
.field private fieldRef:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 4

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getFieldType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 38
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    return-void
.end method


# virtual methods
.method public getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 44
    const-string v0, "enum"

    return-object v0
.end method
