.class public Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"


# static fields
.field private static final CLASS_MAGIC:I = -0x35014542


# instance fields
.field private className:Ljava/lang/String;

.field private constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassRefs()Ljava/util/Vector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->size()I

    move-result v3

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_3b

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_37

    .line 98
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->getTag()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_37

    .line 99
    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    .line 101
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 102
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 108
    :cond_3b
    return-object v2
.end method

.method public getFullClassName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->className:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v2, -0x35014542  # -8346975.0f

    if-ne v1, v2, :cond_3c

    .line 67
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 68
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 71
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    .line 73
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->read(Ljava/io/DataInputStream;)V

    .line 74
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->resolve()V

    .line 76
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 77
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 78
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    .line 80
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    .line 81
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->className:Ljava/lang/String;

    .line 82
    return-void

    .line 62
    :cond_3c
    new-instance v0, Ljava/lang/ClassFormatError;

    const-string v1, "No Magic Code Found - probably not a Java class file."

    invoke-direct {v0, v1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
