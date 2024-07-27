.class public final Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;
.super Ljava/lang/Object;
.source "ConcreteMethod.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/Method;


# instance fields
.field private final attCode:Lcom/s1243808733/android/dx/cf/attrib/AttCode;

.field private final classFile:Lcom/s1243808733/android/dx/cf/iface/ClassFile;

.field private final lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

.field private final localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

.field private final method:Lcom/s1243808733/android/dx/cf/iface/Method;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V
    .registers 10

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    .line 68
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->classFile:Lcom/s1243808733/android/dx/cf/iface/ClassFile;

    .line 70
    invoke-interface {p1}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 71
    const-string v1, "Code"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v3

    .line 82
    sget-object v1, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    .line 83
    if-eqz p3, :cond_4

    .line 84
    const-string v0, "LineNumberTable"

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;

    .line 87
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    .line 91
    :goto_1
    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    .line 93
    sget-object v1, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    .line 94
    if-eqz p4, :cond_3

    .line 101
    const-string v0, "LocalVariableTable"

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTable;

    .line 105
    :goto_2
    if-nez v0, :cond_1

    .line 110
    sget-object v2, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    .line 111
    const-string v0, "LocalVariableTypeTable"

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;

    .line 115
    :goto_3
    if-nez v0, :cond_2

    .line 119
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->mergeDescriptorsAndSignatures(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v0

    .line 124
    :goto_4
    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;->getLineNumbers()Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->concat(Lcom/s1243808733/android/dx/cf/code/LineNumberList;Lcom/s1243808733/android/dx/cf/code/LineNumberList;)Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    move-result-object v1

    .line 87
    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTable;->getLocalVariables()Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->concat(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v1

    .line 105
    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTable;

    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;->getLocalVariables()Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->concat(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v2

    .line 115
    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    return-object v0
.end method

.method public getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumbers()Lcom/s1243808733/android/dx/cf/code/LineNumberList;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    return-object v0
.end method

.method public getLocalVariables()Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-object v0
.end method

.method public getMaxLocals()I
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->getMaxLocals()I

    move-result v0

    return v0
.end method

.method public getMaxStack()I
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->attCode:Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttCode;->getMaxStack()I

    move-result v0

    return v0
.end method

.method public getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->method:Lcom/s1243808733/android/dx/cf/iface/Method;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->classFile:Lcom/s1243808733/android/dx/cf/iface/ClassFile;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/ClassFile;->getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public final isDefaultOrStaticInterfaceMethod()Z
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->classFile:Lcom/s1243808733/android/dx/cf/iface/ClassFile;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/ClassFile;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->isClassInit()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isStaticMethod()Z
    .registers 2

    .line 150
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeSourcePosistion(I)Lcom/s1243808733/android/dx/rop/code/SourcePosition;
    .registers 5

    .line 257
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->lineNumbers:Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->pcToLine(I)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;II)V

    return-object v0
.end method
