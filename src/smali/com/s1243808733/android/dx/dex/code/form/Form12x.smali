.class public final Lcom/s1243808733/android/dx/dex/code/form/Form12x;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form12x.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form12x;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 115
    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 116
    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 118
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    if-eq v4, v8, :cond_2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    if-eq v2, v3, :cond_0

    .line 126
    invoke-virtual {v1, v6, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 127
    invoke-virtual {v1, v7, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 134
    :goto_0
    invoke-virtual {v0, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v0

    invoke-virtual {v1, v8, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 121
    :goto_1
    return-object v1

    .line 129
    :cond_0
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v2

    .line 130
    invoke-virtual {v1, v6, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 131
    invoke-virtual {v1, v7, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_2
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 121
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v0

    invoke-virtual {v1, v7, v0}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_1
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 4

    .line 46
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eq v0, v5, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 95
    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 96
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 106
    :goto_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    move v3, v0

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 86
    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 3

    .line 148
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 158
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 159
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 158
    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->makeByte(II)I

    move-result v0

    .line 157
    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v0

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;S)V

    return-void
.end method
