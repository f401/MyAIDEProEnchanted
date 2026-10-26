.class public final Lcom/s1243808733/android/dx/dex/code/form/Form22t;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form22t.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form22t;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z
    .locals 1

    .line 92
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->signedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public codeSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 84
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 85
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 3

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 46
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

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->branchString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->branchComment(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 67
    instance-of v3, p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 69
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->unsignedFitsInNibble(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 75
    :cond_1
    :goto_0
    return v0

    .line 74
    :cond_2
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    .line 75
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 4

    .line 101
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    move-object v0, p2

    .line 102
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 106
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {v2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->makeByte(II)I

    move-result v1

    .line 105
    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    int-to-short v0, v0

    .line 104
    invoke-static {p1, v1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form22t;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
