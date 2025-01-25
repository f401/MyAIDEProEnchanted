.class public Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;
.super Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
.source "MethodHandleCPInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
    }
.end annotation


# instance fields
.field private reference:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

.field private referenceIndex:I

.field private referenceKind:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;-><init>(II)V

    .line 54
    return-void
.end method


# virtual methods
.method public read(Ljava/io/DataInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->values()[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->referenceKind:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 67
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->referenceIndex:I

    .line 68
    return-void
.end method

.method public resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V
    .registers 3

    .line 93
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->referenceIndex:I

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->reference:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    .line 94
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V

    .line 95
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->reference:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodHandle : Reference kind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->referenceKind:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Reference index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;->referenceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method
