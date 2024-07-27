.class final Lcom/s1243808733/android/dx/cf/direct/FieldListParser;
.super Lcom/s1243808733/android/dx/cf/direct/MemberListParser;
.source "FieldListParser.java"


# instance fields
.field private final fields:Lcom/s1243808733/android/dx/cf/iface/StdFieldList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V
    .registers 7

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 45
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/StdFieldList;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/StdFieldList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->fields:Lcom/s1243808733/android/dx/cf/iface/StdFieldList;

    return-void
.end method


# virtual methods
.method protected getAttributeContext()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public getList()Lcom/s1243808733/android/dx/cf/iface/StdFieldList;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->parseIfNecessary()V

    .line 55
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->fields:Lcom/s1243808733/android/dx/cf/iface/StdFieldList;

    return-object v0
.end method

.method protected humanAccessFlags(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 67
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->fieldString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected humanName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 61
    const-string v0, "field"

    return-object v0
.end method

.method protected set(IILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/cf/iface/Member;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 80
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/StdField;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->getDefiner()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/iface/StdField;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V

    .line 83
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->fields:Lcom/s1243808733/android/dx/cf/iface/StdFieldList;

    invoke-virtual {v1, p1, v0}, Lcom/s1243808733/android/dx/cf/iface/StdFieldList;->set(ILcom/s1243808733/android/dx/cf/iface/Field;)V

    .line 84
    return-object v0
.end method
