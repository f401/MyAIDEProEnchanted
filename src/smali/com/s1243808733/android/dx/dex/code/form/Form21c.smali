.class public final Lcom/s1243808733/android/dx/dex/code/form/Form21c;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form21c.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form21c;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 127
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 128
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->unsignedFitsInByte(I)Z

    move-result v3

    if-ne v1, v5, :cond_1

    .line 131
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 135
    :cond_0
    :goto_0
    return-object v2

    .line 133
    :cond_1
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 134
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 135
    invoke-virtual {v2, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 3

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

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 92
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 103
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->unsignedFitsInByte(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 108
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 111
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    instance-of v0, v3, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v0, :cond_2

    instance-of v0, v3, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-nez v0, :cond_2

    instance-of v0, v3, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_2

    instance-of v0, v3, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_2

    instance-of v0, v3, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 3

    .line 145
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    move-object v0, p2

    .line 146
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    int-to-short v0, v0

    .line 148
    invoke-static {p1, v1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21c;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
