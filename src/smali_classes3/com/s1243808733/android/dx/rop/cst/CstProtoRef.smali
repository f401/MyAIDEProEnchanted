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
    .registers 3

    .line 41
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    return-object v1
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 75
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 48
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    .line 51
    :cond_0
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    .line 52
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 97
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_TYPE:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->typeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    const-string v0, "proto"

    return-object v0
.end method
