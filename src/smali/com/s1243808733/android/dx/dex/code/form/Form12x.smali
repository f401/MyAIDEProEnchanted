.class public final Lcom/s1243808733/android/dx/dex/code/form/Form12x;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form12x.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form12x;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 10

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 114
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 115
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 116
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v6

    if-eq v6, v1, :cond_4e

    const/4 v7, 0x3

    if-ne v6, v7, :cond_48

    if-eq v3, v5, :cond_2e

    .line 126
    invoke-virtual {v0, v2, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 127
    invoke-virtual {v0, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_38

    .line 129
    :cond_2e
    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v3

    .line 130
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 131
    invoke-virtual {v0, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 134
    :goto_38
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_5c

    .line 138
    :cond_48
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 120
    :cond_4e
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 121
    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result p1

    invoke-virtual {v0, v4, p1}, Ljava/util/BitSet;->set(IZ)V

    :goto_5c
    return-object v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 5

    .line 46
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    .line 63
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 7

    .line 75
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 79
    :cond_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_16

    return v1

    .line 94
    :cond_16
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 96
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    if-eq v4, p1, :cond_35

    return v1

    .line 85
    :cond_2d
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 86
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 106
    :cond_35
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 107
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    return v1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 6

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

    move-result p2

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/dex/code/form/Form12x;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;S)V

    return-void
.end method
