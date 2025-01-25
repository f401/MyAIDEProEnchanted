.class public final Lcom/s1243808733/android/dx/dex/code/form/Form20t;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form20t.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form20t;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form20t;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form20t;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z
    .registers 2

    .line 73
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result p1

    if-eqz p1, :cond_e

    .line 76
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form20t;->signedFitsInShort(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public codeSize()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 2

    .line 43
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form20t;->branchString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    .line 49
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form20t;->branchComment(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 3

    .line 61
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    if-eqz v0, :cond_1e

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1e

    .line 66
    :cond_f
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    .line 67
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/form/Form20t;->branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z

    move-result p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x1

    :goto_1d
    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return p1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 5

    .line 82
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 84
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form20t;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short v0, v0

    invoke-static {p1, p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form20t;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
