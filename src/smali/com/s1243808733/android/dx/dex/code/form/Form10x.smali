.class public final Lcom/s1243808733/android/dx/dex/code/form/Form10x;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form10x.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form10x;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form10x;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form10x;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 1

    .line 63
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form10x;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v0

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form10x;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;S)V

    return-void
.end method
