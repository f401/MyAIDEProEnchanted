.class public final Lcom/s1243808733/android/dx/cf/iface/StdMethod;
.super Lcom/s1243808733/android/dx/cf/iface/StdMember;
.source "StdMethod.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/Method;


# instance fields
.field private final effectiveDescriptor:Lcom/s1243808733/android/dx/rop/type/Prototype;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/iface/StdMember;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdMethod;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p4

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p4

    .line 46
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 47
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result p2

    .line 48
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->isInstanceInit()Z

    move-result p3

    .line 46
    invoke-static {p4, p1, p2, p3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;ZZ)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/iface/StdMethod;->effectiveDescriptor:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-void
.end method


# virtual methods
.method public getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/iface/StdMethod;->effectiveDescriptor:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method
