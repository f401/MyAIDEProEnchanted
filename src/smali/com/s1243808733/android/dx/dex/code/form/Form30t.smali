.class public final Lcom/s1243808733/android/dx/dex/code/form/Form30t;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form30t.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form30t;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form30t;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form30t;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public codeSize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form30t;->branchString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form30t;->branchComment(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 1

    .line 61
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 2

    .line 78
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 80
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form30t;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form30t;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SI)V

    return-void
.end method
