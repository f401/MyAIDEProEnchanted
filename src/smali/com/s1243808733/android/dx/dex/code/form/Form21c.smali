.class public final Lcom/s1243808733/android/dx/dex/code/form/Form21c;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form21c.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form21c;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 7

    .line 125
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 127
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->unsignedFitsInByte(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_21

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_39

    .line 133
    :cond_21
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    if-ne v0, p1, :cond_39

    .line 134
    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 135
    invoke-virtual {v1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_39
    :goto_39
    return-object v1
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 5

    .line 52
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_7

    .line 60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 7

    .line 75
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 79
    :cond_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    const/4 v4, 0x2

    if-eq v2, v4, :cond_15

    return v1

    .line 92
    :cond_15
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-eq v4, v0, :cond_2c

    return v1

    .line 84
    :cond_28
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 103
    :cond_2c
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->unsignedFitsInByte(I)Z

    move-result v0

    if-nez v0, :cond_37

    return v1

    .line 107
    :cond_37
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 108
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    .line 111
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_48

    return v1

    .line 115
    :cond_48
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v0, :cond_5c

    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-nez v0, :cond_5c

    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_5c

    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_5c

    instance-of p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz p1, :cond_5d

    :cond_5c
    const/4 v1, 0x1

    :cond_5d
    return v1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 6

    .line 145
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 146
    move-object v1, p2

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short v0, v1

    .line 148
    invoke-static {p1, p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
