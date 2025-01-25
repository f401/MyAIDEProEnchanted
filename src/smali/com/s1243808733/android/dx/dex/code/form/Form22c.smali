.class public final Lcom/s1243808733/android/dx/dex/code/form/Form22c;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form22c.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form22c;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
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
    .registers 5

    .line 95
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 6

    .line 48
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
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

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 6

    .line 72
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 73
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 74
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_48

    .line 75
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->unsignedFitsInNibble(I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_48

    .line 80
    :cond_2e
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 83
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_3b

    return v2

    .line 87
    :cond_3b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    .line 88
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v0, :cond_47

    instance-of p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz p1, :cond_48

    :cond_47
    const/4 v2, 0x1

    :cond_48
    :goto_48
    return v2
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 7

    .line 106
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 107
    move-object v1, p2

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->makeByte(II)I

    move-result v0

    .line 110
    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short v0, v1

    .line 109
    invoke-static {p1, p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22c;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
