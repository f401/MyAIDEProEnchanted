.class public Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;
.super Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
.source "InterfaceMethodRefCPInfo.java"


# instance fields
.field private classIndex:I

.field private interfaceMethodClassName:Ljava/lang/String;

.field private interfaceMethodName:Ljava/lang/String;

.field private interfaceMethodType:Ljava/lang/String;

.field private nameAndTypeIndex:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 47
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;-><init>(II)V

    .line 48
    return-void
.end method


# virtual methods
.method public getInterfaceMethodClassName()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceMethodName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceMethodType()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodType:Ljava/lang/String;

    return-object v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->classIndex:I

    .line 61
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->nameAndTypeIndex:I

    .line 62
    return-void
.end method

.method public resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V
    .registers 4

    .line 73
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->classIndex:I

    .line 74
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    .line 76
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V

    .line 78
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodClassName:Ljava/lang/String;

    .line 80
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->nameAndTypeIndex:I

    .line 81
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;

    .line 83
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;->resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V

    .line 85
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodName:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodType:Ljava/lang/String;

    .line 88
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterfaceMethod : Class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->interfaceMethodType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_2d
    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterfaceMethod : Class index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->classIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name and type index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;->nameAndTypeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method
