.class public final Lcom/s1243808733/android/dx/dex/code/LocalList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;,
        Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;,
        Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EMPTY:Lcom/s1243808733/android/dx/dex/code/LocalList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/LocalList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method private static debugVerify(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .locals 5

    .line 378
    :try_start_0
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->debugVerify0(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 380
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 382
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    throw v1
.end method

.method private static debugVerify0(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .locals 11

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v4

    .line 394
    const/high16 v0, 0x10000

    new-array v5, v0, [Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_b

    .line 397
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v6

    .line 398
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v7

    .line 400
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    aget-object v0, v5, v7

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :cond_0
    aput-object v6, v5, v7

    .line 448
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 404
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "redundant start at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_2
    aget-object v0, v5, v7

    if-eqz v0, :cond_a

    .line 416
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v8

    add-int/lit8 v2, v3, 0x1

    move v0, v1

    :goto_2
    if-ge v2, v4, :cond_3

    .line 420
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v9

    .line 421
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v10

    if-eq v10, v8, :cond_5

    .line 436
    :cond_3
    if-nez v0, :cond_4

    .line 442
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-eq v0, v2, :cond_9

    .line 448
    :cond_4
    const/4 v0, 0x0

    aput-object v0, v5, v7

    goto :goto_1

    .line 424
    :cond_5
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    if-ne v10, v7, :cond_6

    .line 425
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 426
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v9, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne v0, v9, :cond_7

    const/4 v0, 0x1

    .line 436
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 428
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "improperly marked end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "redundant end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "improper end replacement claim at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "redundant end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/dex/code/DalvInsnList;)Lcom/s1243808733/android/dx/dex/code/LocalList;
    .locals 5

    .line 329
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v3

    .line 347
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;

    invoke-direct {v4, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 350
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v1

    .line 352
    instance-of v0, v1, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 353
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    .line 354
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 355
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->snapshot(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    .line 358
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 356
    :cond_1
    instance-of v0, v1, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 357
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getLocal()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 358
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->finish()Lcom/s1243808733/android/dx/dex/code/LocalList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->set0(ILjava/lang/Object;)V

    return-void
.end method
