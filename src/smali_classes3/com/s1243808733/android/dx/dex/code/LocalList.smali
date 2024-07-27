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
.method static final constructor <clinit>()V
    .registers 2

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

.method static synthetic access$L1000000()Z
    .registers 1

    sget-boolean v0, Lcom/s1243808733/android/dx/dex/code/LocalList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$S1000000(Z)V
    .registers 1

    sput-boolean p0, Lcom/s1243808733/android/dx/dex/code/LocalList;->DEBUG:Z

    return-void
.end method

.method private static debugVerify(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/LocalList;",
            ")V"
        }
    .end annotation

    .line 378
    :try_start_0
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->debugVerify0(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    return-void

    .line 378
    :catch_0
    move-exception v1

    .line 380
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v2

    .line 381
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 384
    throw v1

    .line 382
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static debugVerify0(Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/LocalList;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v4

    .line 394
    const/high16 v0, 0x10000

    new-array v5, v0, [Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move v3, v1

    .line 396
    :goto_0
    if-lt v3, v4, :cond_0

    return-void

    .line 397
    :cond_0
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

    .line 403
    if-eqz v0, :cond_1

    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "redundant start at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, ": got "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; had "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_1
    aput-object v6, v5, v7

    .line 396
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 411
    :cond_2
    aget-object v0, v5, v7

    if-nez v0, :cond_3

    .line 412
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "redundant end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_3
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v8

    .line 419
    add-int/lit8 v2, v3, 0x1

    move v0, v1

    :goto_2
    if-lt v2, v4, :cond_5

    .line 441
    :cond_4
    if-nez v0, :cond_9

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne v0, v2, :cond_9

    .line 443
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "improper end replacement claim at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_5
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v9

    .line 421
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v10

    if-ne v10, v8, :cond_4

    .line 424
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    if-ne v10, v7, :cond_7

    .line 425
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 426
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v9, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-eq v0, v9, :cond_6

    .line 428
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "improperly marked end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_6
    const/4 v0, 0x1

    .line 419
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 434
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "redundant end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_9
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v0, v5, v7

    goto/16 :goto_1
.end method

.method public static make(Lcom/s1243808733/android/dx/dex/code/DalvInsnList;)Lcom/s1243808733/android/dx/dex/code/LocalList;
    .registers 6

    .line 329
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v3

    .line 347
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;

    invoke-direct {v4, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;-><init>(I)V

    .line 349
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 362
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->finish()Lcom/s1243808733/android/dx/dex/code/LocalList;

    move-result-object v0

    .line 368
    return-object v0

    .line 350
    :cond_0
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v1

    .line 352
    instance-of v0, v1, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 353
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 355
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$MakeState;->snapshot(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    .line 349
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 356
    :cond_2
    instance-of v0, v1, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_1

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
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v1

    .line 81
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;
    .registers 3

    .line 59
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->set0(ILjava/lang/Object;)V

    return-void
.end method
