.class public final Lcom/s1243808733/android/dx/dex/code/form/Form10x;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form10x.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form10x;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form10x;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form10x;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 2

    .line 44
    const-string p1, ""

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    .line 51
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 3

    .line 63
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    if-eqz v0, :cond_10

    .line 64
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 4

    .line 70
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form10x;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/dex/code/form/Form10x;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;S)V

    return-void
.end method
