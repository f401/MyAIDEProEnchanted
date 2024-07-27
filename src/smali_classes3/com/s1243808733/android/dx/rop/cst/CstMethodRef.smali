.class public final Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
.super Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;
.source "CstMethodRef.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-void
.end method


# virtual methods
.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 37
    const-string v0, "method"

    return-object v0
.end method
