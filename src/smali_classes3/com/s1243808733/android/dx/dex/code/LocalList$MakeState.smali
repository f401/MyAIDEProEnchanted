.class public Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;
.super Ljava/lang/Object;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeState"
.end annotation


# instance fields
.field private endIndices:[I

.field private final lastAddress:I

.field private nullResultCount:I

.field private regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    .line 480
    iput v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    move-object v0, v1

    .line 481
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 482
    check-cast v1, [I

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    .line 483
    iput v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    return-void
.end method

.method private aboutToProcess(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    if-eqz v0, :cond_1

    move v0, v1

    .line 496
    :goto_0
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    if-ne p1, v2, :cond_2

    if-nez v0, :cond_2

    .line 523
    :cond_0
    :goto_1
    return-void

    .line 494
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :cond_2
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    if-ge p1, v2, :cond_3

    .line 501
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    array-length v2, v2

    if-lt p2, v2, :cond_0

    .line 511
    :cond_4
    add-int/lit8 v2, p2, 0x1

    .line 512
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    .line 513
    new-array v2, v2, [I

    .line 514
    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 516
    if-nez v0, :cond_5

    .line 517
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->putAll(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    .line 518
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    array-length v4, v4

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    :cond_5
    iput-object v3, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 523
    iput-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    goto :goto_1
.end method

.method private add(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 850
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 852
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    new-instance v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    invoke-direct {v2, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne p2, v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v1, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 856
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 859
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v1, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 859
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_0
.end method

.method private addOrUpdateEnd(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 874
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne p2, v0, :cond_0

    .line 875
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_0
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v1, v1, v0

    .line 881
    if-ltz v1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 884
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 890
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 896
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)V

    goto :goto_0
.end method

.method private checkForEmptyRange(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 752
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    .line 756
    :goto_0
    if-gez v4, :cond_1

    .line 778
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 779
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    .line 782
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 784
    check-cast v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 787
    add-int/lit8 v4, v4, -0x1

    move-object v0, v1

    :goto_2
    if-gez v4, :cond_5

    .line 800
    :goto_3
    if-eqz v3, :cond_0

    .line 802
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aput v4, v1, v5

    .line 804
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    sget-object v3, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v2

    .line 814
    :goto_4
    return v0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 759
    if-nez v0, :cond_3

    .line 756
    :cond_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v5

    if-eq v5, p1, :cond_4

    move v0, v3

    .line 765
    goto :goto_4

    .line 768
    :cond_4
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 788
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 790
    if-nez v0, :cond_7

    .line 787
    :cond_6
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_2

    .line 794
    :cond_7
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v1, v5, :cond_6

    move v3, v2

    .line 796
    goto :goto_3
.end method

.method private static filterSpec(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 833
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_0

    .line 834
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    .line 837
    :cond_0
    return-object p0
.end method


# virtual methods
.method public endLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 695
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)V

    return-void
.end method

.method public endLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;",
            ")V"
        }
    .end annotation

    .line 712
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 714
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 715
    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 717
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v0, v2, v0

    .line 719
    if-ltz v0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->checkForEmptyRange(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    invoke-direct {p0, p1, p3, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->add(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_0
.end method

.method public finish()Lcom/s1243808733/android/dx/dex/code/LocalList;
    .registers 7

    const/4 v2, 0x0

    .line 905
    const v0, 0x7fffffff

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 907
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 908
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    sub-int v3, v0, v1

    .line 910
    if-nez v3, :cond_0

    .line 911
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/LocalList;

    .line 944
    :goto_0
    return-object v0

    .line 922
    :cond_0
    new-array v4, v3, [Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 924
    if-ne v0, v3, :cond_2

    .line 925
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 935
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 937
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-direct {v0, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList;-><init>(I)V

    .line 939
    :goto_1
    if-lt v2, v3, :cond_4

    .line 943
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->setImmutable()V

    goto :goto_0

    .line 928
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    .line 930
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 929
    if-eqz v0, :cond_3

    .line 930
    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 940
    :cond_4
    aget-object v1, v4, v2

    invoke-virtual {v0, v2, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->set(ILcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    .line 939
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public snapshot(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;",
            ")V"
        }
    .end annotation

    .line 540
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v1

    .line 541
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 543
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 545
    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 547
    if-nez v2, :cond_2

    .line 548
    if-eqz v3, :cond_1

    .line 549
    invoke-virtual {p0, p1, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 543
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_2
    if-nez v3, :cond_3

    .line 552
    invoke-virtual {p0, p1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 553
    :cond_3
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 554
    invoke-virtual {p0, p1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 555
    invoke-virtual {p0, p1, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1
.end method

.method public startLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 576
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 578
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 579
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 581
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 583
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->findMatchingLocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 589
    if-eqz v3, :cond_1

    .line 594
    sget-object v4, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v4, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 597
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v3, v3, v1

    .line 599
    if-eqz v0, :cond_5

    .line 604
    sget-object v3, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v3, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->add(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 654
    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 655
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 657
    sget-object v3, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v3, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 668
    :cond_3
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_4

    .line 671
    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 683
    :cond_4
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v0, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->add(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_0

    .line 605
    :cond_5
    if-ltz v3, :cond_2

    .line 612
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 613
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 614
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 625
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    .line 627
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 628
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    .line 637
    :cond_6
    sget-object v4, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    .line 639
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
