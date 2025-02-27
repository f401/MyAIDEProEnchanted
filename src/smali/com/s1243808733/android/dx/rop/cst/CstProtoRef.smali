.class public final Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;
.super Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.source "CstProtoRef.java"


# instance fields
.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    .line 42
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    return-object v0
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 75
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 48
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    .line 52
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 97
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_TYPE:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 69
    const-string v0, "proto"

    return-object v0
.end method
