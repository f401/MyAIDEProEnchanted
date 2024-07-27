.class Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;
.super Ljava/lang/Object;
.source "RegisterSpecList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Expander"
.end annotation


# instance fields
.field private base:I

.field private final compatRegs:Ljava/util/BitSet;

.field private duplicateFirst:Z

.field private final regSpecList:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

.field private final result:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/BitSet;IZ)V
    .registers 7

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->regSpecList:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 404
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->compatRegs:Ljava/util/BitSet;

    .line 405
    iput p3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->base:I

    .line 406
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 407
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->duplicateFirst:Z

    return-void
.end method

.method static synthetic access$1000006(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->expandRegister(I)V

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method private expandRegister(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->regSpecList:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->access$com$s1243808733$android$dx$util$FixedSizeList$10(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->expandRegister(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-void
.end method

.method private expandRegister(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 415
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->compatRegs:Ljava/util/BitSet;

    if-nez v2, :cond_2

    .line 416
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 419
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->base:I

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 420
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->duplicateFirst:Z

    if-nez v0, :cond_1

    .line 421
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->base:I

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->base:I

    .line 428
    :cond_1
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->duplicateFirst:Z

    .line 430
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-static {v0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->access$com$s1243808733$android$dx$util$FixedSizeList$12(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILjava/lang/Object;)V

    return-void

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->compatRegs:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->regSpecList:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList$Expander;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object v0
.end method
