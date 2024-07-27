.class public abstract Lcom/s1243808733/android/dx/cf/iface/StdMember;
.super Ljava/lang/Object;
.source "StdMember.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/Member;


# instance fields
.field private final accessFlags:I

.field private final attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

.field private final definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V
    .registers 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p3, :cond_1

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    if-nez p4, :cond_2

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 63
    iput p2, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->accessFlags:I

    .line 64
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 65
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    return-void
.end method


# virtual methods
.method public final getAccessFlags()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 90
    iget v0, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->accessFlags:I

    return v0
.end method

.method public final getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->attributes:Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    return-object v0
.end method

.method public final getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public final getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public final getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdMember;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/iface/StdMember;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
