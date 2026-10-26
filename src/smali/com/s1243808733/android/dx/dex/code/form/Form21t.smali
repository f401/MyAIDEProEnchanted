.class public final Lcom/s1243808733/android/dx/dex/code/form/Form21t;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form21t.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form21t;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

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

    .line 89
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->signedFitsInShort(I)Z

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
    .locals 4

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 82
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->unsignedFitsInByte(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

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

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->branchString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->branchComment(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 66
    instance-of v3, p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 68
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->unsignedFitsInByte(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 73
    :cond_1
    :goto_0
    return v0

    .line 72
    :cond_2
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    .line 73
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 3

    .line 98
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    move-object v0, p2

    .line 99
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    int-to-short v0, v0

    .line 101
    invoke-static {p1, v1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21t;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
