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
.field private static final DEBUG:Z = false

.field public static final EMPTY:Lcom/s1243808733/android/dx/dex/code/LocalList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/LocalList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method private static debugVerify(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .registers 6

    .line 378
    :try_start_0
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->debugVerify0(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 380
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    .line 382
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 384
    :cond_18
    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19
.end method

.method private static debugVerify0(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .registers 13

    .line 393
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v0

    .line 394
    const/high16 v1, 0x10000

    new-array v1, v1, [Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_fe

    .line 397
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    .line 398
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v5

    .line 400
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 401
    aget-object v6, v1, v5

    if-eqz v6, :cond_51

    .line 403
    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_51

    .line 404
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "redundant start at "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": got "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; had "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_51
    :goto_51
    aput-object v4, v1, v5

    goto/16 :goto_e0

    .line 411
    :cond_55
    aget-object v6, v1, v5

    const-string v7, "redundant end at "

    if-eqz v6, :cond_e4

    .line 416
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v6

    add-int/lit8 v8, v3, 0x1

    const/4 v9, 0x0

    :goto_62
    if-ge v8, v0, :cond_ba

    .line 420
    invoke-virtual {p0, v8}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v10

    .line 421
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v11

    if-eq v11, v6, :cond_6f

    goto :goto_ba

    .line 424
    :cond_6f
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    if-ne v11, v5, :cond_b7

    .line 425
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 426
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v9

    sget-object v10, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne v9, v10, :cond_89

    const/4 v9, 0x1

    goto :goto_b7

    .line 428
    :cond_89
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "improperly marked end at "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7
    :goto_b7
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    :cond_ba
    :goto_ba
    if-nez v9, :cond_dd

    .line 442
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v4

    sget-object v7, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-eq v4, v7, :cond_c5

    goto :goto_dd

    .line 443
    :cond_c5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "improper end replacement claim at "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_dd
    :goto_dd
    const/4 v4, 0x0

    aput-object v4, v1, v5

    :goto_e0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 412
    :cond_e4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fe
    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/dex/code/DalvInsnList;)Lcom/s1243808733/android/dx/dex/code/LocalList;
    .registers 6

    .line 329
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    .line 347
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_38

    .line 350
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v3

    .line 352
    instance-of v4, v3, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    if-eqz v4, :cond_23

    .line 353
    move-object v4, v3

    check-cast v4, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    .line 354
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v4

    .line 355
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->snapshot(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    goto :goto_35

    .line 356
    :cond_23
    instance-of v4, v3, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    if-eqz v4, :cond_35

    .line 357
    move-object v4, v3

    check-cast v4, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getLocal()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 358
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 362
    :cond_38
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->finish()Lcom/s1243808733/android/dx/dex/code/LocalList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V
    .registers 6

    .line 79
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 3

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->set0(ILjava/lang/Object;)V

    return-void
.end method
