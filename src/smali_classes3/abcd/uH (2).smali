.class public Labcd/uH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/uH$a;,
        Labcd/uH$b;,
        Labcd/uH$c;
    }
.end annotation


# static fields
.field private static volatile DW:Labcd/uH;

.field private static volatile FH:I

.field private static final j6:Ljava/util/Random;


# instance fields
.field private final EQ:I

.field private final Hw:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Labcd/CG;",
            ">;"
        }
    .end annotation
.end field

.field private final J0:Z

.field private final J8:I

.field private final QX:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Labcd/uH$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Ws:I

.field private final XL:Ljava/util/concurrent/atomic/AtomicLong;

.field private final Zo:Ljava/util/concurrent/atomic/AtomicLong;

.field private final gn:[Labcd/uH$b;

.field private final tp:I

.field private final u7:Ljava/util/concurrent/locks/ReentrantLock;

.field private final v5:I

.field private final we:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Labcd/uH;->j6:Ljava/util/Random;

    new-instance v0, Labcd/vH;

    invoke-direct {v0}, Labcd/vH;-><init>()V

    invoke-static {v0}, Labcd/uH;->j6(Labcd/vH;)V

    return-void
.end method

.method private constructor <init>(Labcd/vH;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/uH;->FH(Labcd/vH;)I

    move-result v0

    iput v0, p0, Labcd/uH;->v5:I

    invoke-static {p1}, Labcd/uH;->DW(Labcd/vH;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_c3

    if-lt v1, v2, :cond_b7

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, p0, Labcd/uH;->Hw:Ljava/lang/ref/ReferenceQueue;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Labcd/uH;->Zo:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v3, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-array v0, v1, [Labcd/uH$b;

    iput-object v0, p0, Labcd/uH;->gn:[Labcd/uH$b;

    const/4 v0, 0x0

    :goto_2e
    iget-object v1, p0, Labcd/uH;->gn:[Labcd/uH$b;

    array-length v3, v1

    if-lt v0, v3, :cond_ab

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    iget v0, p0, Labcd/uH;->v5:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v3, 0x3fb999999999999aL  # 0.1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    const/16 v1, 0x40

    if-ge v1, v0, :cond_52

    const/16 v0, 0x40

    goto :goto_56

    :cond_52
    const/4 v1, 0x4

    if-ge v0, v1, :cond_56

    const/4 v0, 0x4

    :cond_56
    :goto_56
    iget v1, p0, Labcd/uH;->v5:I

    if-ge v1, v0, :cond_5b

    move v0, v1

    :cond_5b
    iput v0, p0, Labcd/uH;->tp:I

    invoke-virtual {p1}, Labcd/vH;->FH()I

    move-result v0

    iput v0, p0, Labcd/uH;->EQ:I

    invoke-virtual {p1}, Labcd/vH;->DW()J

    move-result-wide v3

    iput-wide v3, p0, Labcd/uH;->we:J

    invoke-virtual {p1}, Labcd/vH;->Zo()Z

    move-result v1

    iput-boolean v1, p0, Labcd/uH;->J0:Z

    invoke-virtual {p1}, Labcd/vH;->Hw()I

    move-result p1

    invoke-static {p1}, Labcd/uH;->j6(I)I

    move-result p1

    iput p1, p0, Labcd/uH;->J8:I

    shl-int p1, v2, p1

    iput p1, p0, Labcd/uH;->Ws:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    if-lt v0, v2, :cond_9f

    int-to-long v0, p1

    cmp-long p1, v3, v0

    if-ltz p1, :cond_93

    return-void

    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->windowSizeMustBeLesserThanLimit:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->openFilesMustBeAtLeast1:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ab
    new-instance v3, Labcd/uH$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Labcd/uH$b;-><init>(Labcd/uH$b;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e

    :cond_b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->lockCountMustBeGreaterOrEqual1:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->tSizeMustBeGreaterOrEqual1:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_d0

    :goto_cf
    throw p1

    :goto_d0
    goto :goto_cf
.end method

.method private static DW(Labcd/vH;)I
    .registers 2

    invoke-virtual {p0}, Labcd/vH;->FH()I

    move-result p0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private DW(Labcd/aH;J)Labcd/CG;
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->v5(Labcd/aH;J)I

    move-result v0

    iget-object v1, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/uH$a;

    invoke-direct {p0, v1, p1, p2, p3}, Labcd/uH;->j6(Labcd/uH$a;Labcd/aH;J)Labcd/CG;

    move-result-object v2

    if-eqz v2, :cond_13

    return-object v2

    :cond_13
    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->Hw(Labcd/aH;J)Labcd/uH$b;

    move-result-object v2

    monitor-enter v2

    :try_start_18
    iget-object v3, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/uH$a;

    if-eq v3, v1, :cond_2a

    invoke-direct {p0, v3, p1, p2, p3}, Labcd/uH;->j6(Labcd/uH$a;Labcd/aH;J)Labcd/CG;

    move-result-object v1

    if-eqz v1, :cond_2a

    monitor-exit v2

    return-object v1

    :cond_2a
    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->FH(Labcd/aH;J)Labcd/CG;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Labcd/uH;->j6(Labcd/aH;JLabcd/CG;)Labcd/uH$c;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/uH$c;)V

    :goto_35
    new-instance p2, Labcd/uH$a;

    invoke-static {v3}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/uH$a;-><init>(Labcd/uH$a;Labcd/uH$c;)V

    iget-object p3, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p3, v0, v3, p2}, Labcd/tH$a$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_63

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_6d

    iget-object p1, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    if-eqz p1, :cond_62

    :try_start_4f
    invoke-direct {p0}, Labcd/uH;->FH()V

    invoke-direct {p0}, Labcd/uH;->DW()V
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_5b

    iget-object p1, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_62

    :catchall_5b
    move-exception p1

    iget-object p2, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_62
    :goto_62
    return-object v1

    :cond_63
    :try_start_63
    iget-object p2, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Labcd/uH$a;

    goto :goto_35

    :catchall_6d
    move-exception p1

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_6d

    goto :goto_71

    :goto_70
    throw p1

    :goto_71
    goto :goto_70
.end method

.method private DW()V
    .registers 12

    :cond_0
    :goto_0
    invoke-direct {p0}, Labcd/uH;->Hw()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Labcd/uH;->j6:Ljava/util/Random;

    iget v1, p0, Labcd/uH;->v5:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Labcd/uH;->tp:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-gez v1, :cond_32

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Labcd/uH$a;->j6()V

    invoke-direct {p0}, Labcd/uH;->FH()V

    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uH$a;

    iget-object v1, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Labcd/tH$a$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_32
    iget v5, p0, Labcd/uH;->v5:I

    if-gt v5, v0, :cond_37

    const/4 v0, 0x0

    :cond_37
    iget-object v5, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/uH$a;

    :goto_3f
    if-nez v5, :cond_46

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_46
    iget-boolean v6, v5, Labcd/uH$a;->FH:Z

    if-eqz v6, :cond_4b

    goto :goto_5b

    :cond_4b
    if-eqz v3, :cond_59

    iget-object v6, v5, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-wide v6, v6, Labcd/uH$c;->Hw:J

    iget-object v8, v3, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-wide v8, v8, Labcd/uH$c;->Hw:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_5b

    :cond_59
    move v4, v0

    move-object v3, v5

    :cond_5b
    :goto_5b
    iget-object v5, v5, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_3f
.end method

.method private DW(Labcd/aH;)V
    .registers 2

    invoke-virtual {p1}, Labcd/aH;->FH()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_b
    return-void
.end method

.method private DW(Labcd/uH$c;)V
    .registers 7

    iget-object v0, p0, Labcd/uH;->Zo:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Labcd/uH;->Zo:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iput-wide v0, p1, Labcd/uH$c;->Hw:J

    return-void
.end method

.method private static FH(Labcd/vH;)I
    .registers 6

    invoke-virtual {p0}, Labcd/vH;->Hw()I

    move-result v0

    invoke-virtual {p0}, Labcd/vH;->DW()J

    move-result-wide v1

    if-lez v0, :cond_2c

    int-to-long v3, v0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_20

    div-long/2addr v1, v3

    const-wide/16 v3, 0x5

    mul-long v1, v1, v3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    const-wide/32 v3, 0x77359400

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->windowSizeMustBeLesserThanLimit:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidWindowSize:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private FH(Labcd/aH;J)Labcd/CG;
    .registers 5

    invoke-virtual {p1}, Labcd/aH;->j6()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_b
    :try_start_b
    iget-boolean v0, p0, Labcd/uH;->J0:Z

    if-eqz v0, :cond_16

    iget v0, p0, Labcd/uH;->Ws:I

    invoke-virtual {p1, p2, p3, v0}, Labcd/aH;->j6(JI)Labcd/CG;

    move-result-object p1

    return-object p1

    :cond_16
    iget v0, p0, Labcd/uH;->Ws:I

    invoke-virtual {p1, p2, p3, v0}, Labcd/aH;->DW(JI)Labcd/AG;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_1c} :catch_22
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p2

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/aH;)V

    throw p2

    :catch_22
    move-exception p2

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/aH;)V

    throw p2

    :catch_27
    move-exception p2

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/aH;)V

    throw p2
.end method

.method private FH()V
    .registers 6

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/uH;->Hw:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Labcd/uH$c;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Labcd/uH$c;->j6()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Labcd/uH;->j6(Labcd/uH$c;)V

    iget-object v1, v0, Labcd/uH$c;->j6:Labcd/aH;

    iget-wide v2, v0, Labcd/uH$c;->DW:J

    invoke-direct {p0, v1, v2, v3}, Labcd/uH;->v5(Labcd/aH;J)I

    move-result v1

    iget-object v2, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/uH$a;

    move-object v3, v2

    :goto_25
    if-nez v3, :cond_29

    const/4 v0, 0x0

    goto :goto_30

    :cond_29
    iget-object v4, v3, Labcd/uH$a;->DW:Labcd/uH$c;

    if-ne v4, v0, :cond_3c

    const/4 v0, 0x1

    iput-boolean v0, v3, Labcd/uH$a;->FH:Z

    :goto_30
    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v2}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Labcd/tH$a$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3c
    iget-object v3, v3, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_25
.end method

.method private FH(Labcd/aH;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Labcd/uH;->v5:I

    if-lt v1, v2, :cond_a

    invoke-direct {p0}, Labcd/uH;->FH()V

    return-void

    :cond_a
    iget-object v2, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/uH$a;

    move-object v3, v2

    const/4 v4, 0x0

    :goto_14
    if-nez v3, :cond_24

    if-eqz v4, :cond_21

    iget-object v3, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v2}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v4

    invoke-static {v3, v1, v2, v4}, Labcd/tH$a$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    iget-object v5, v3, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-object v5, v5, Labcd/uH$c;->j6:Labcd/aH;

    if-ne v5, p1, :cond_2e

    invoke-virtual {v3}, Labcd/uH$a;->j6()V

    goto :goto_32

    :cond_2e
    iget-boolean v5, v3, Labcd/uH$a;->FH:Z

    if-eqz v5, :cond_33

    :goto_32
    const/4 v4, 0x1

    :cond_33
    iget-object v3, v3, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_14
.end method

.method private Hw(Labcd/aH;J)Labcd/uH$b;
    .registers 5

    iget-object v0, p0, Labcd/uH;->gn:[Labcd/uH$b;

    iget p1, p1, Labcd/aH;->v5:I

    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->j6(IJ)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Labcd/uH;->gn:[Labcd/uH$b;

    array-length p2, p2

    rem-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method private Hw()Z
    .registers 6

    iget v0, p0, Labcd/uH;->EQ:I

    iget-object v1, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_18

    iget-wide v0, p0, Labcd/uH;->we:J

    iget-object v2, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_18

    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method static j6()I
    .registers 1

    sget v0, Labcd/uH;->FH:I

    return v0
.end method

.method private static final j6(I)I
    .registers 3

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_1c

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->windowSizeMustBePowerOf2:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidWindowSize:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j6(IJ)I
    .registers 5

    iget v0, p0, Labcd/uH;->J8:I

    ushr-long/2addr p2, v0

    long-to-int p3, p2

    add-int/2addr p1, p3

    return p1
.end method

.method private j6(J)J
    .registers 4

    iget v0, p0, Labcd/uH;->J8:I

    ushr-long/2addr p1, v0

    shl-long/2addr p1, v0

    return-wide p1
.end method

.method static final j6(Labcd/aH;J)Labcd/CG;
    .registers 4

    sget-object v0, Labcd/uH;->DW:Labcd/uH;

    invoke-direct {v0, p1, p2}, Labcd/uH;->j6(J)J

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Labcd/uH;->DW(Labcd/aH;J)Labcd/CG;

    move-result-object p0

    sget-object p1, Labcd/uH;->DW:Labcd/uH;

    if-eq v0, p1, :cond_11

    invoke-direct {v0}, Labcd/uH;->v5()V

    :cond_11
    return-object p0
.end method

.method private j6(Labcd/uH$a;Labcd/aH;J)Labcd/CG;
    .registers 9

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1e

    :cond_3
    iget-object v0, p1, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-object v1, v0, Labcd/uH$c;->j6:Labcd/aH;

    if-ne v1, p2, :cond_20

    iget-wide v1, v0, Labcd/uH$c;->DW:J

    cmp-long v3, v1, p3

    if-nez v3, :cond_20

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/CG;

    if-eqz p2, :cond_1b

    invoke-direct {p0, v0}, Labcd/uH;->DW(Labcd/uH$c;)V

    return-object p2

    :cond_1b
    invoke-virtual {p1}, Labcd/uH$a;->j6()V

    :goto_1e
    const/4 p1, 0x0

    return-object p1

    :cond_20
    iget-object p1, p1, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_0
.end method

.method private static j6(Labcd/uH$a;)Labcd/uH$a;
    .registers 3

    :goto_0
    if-eqz p0, :cond_f

    iget-boolean v0, p0, Labcd/uH$a;->FH:Z

    if-nez v0, :cond_7

    goto :goto_f

    :cond_7
    iget-object v0, p0, Labcd/uH$a;->DW:Labcd/uH$c;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->enqueue()Z

    iget-object p0, p0, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_0

    :cond_f
    :goto_f
    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    iget-object v0, p0, Labcd/uH$a;->j6:Labcd/uH$a;

    invoke-static {v0}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v0

    iget-object v1, p0, Labcd/uH$a;->j6:Labcd/uH$a;

    if-ne v0, v1, :cond_1e

    goto :goto_26

    :cond_1e
    new-instance v1, Labcd/uH$a;

    iget-object p0, p0, Labcd/uH$a;->DW:Labcd/uH$c;

    invoke-direct {v1, v0, p0}, Labcd/uH$a;-><init>(Labcd/uH$a;Labcd/uH$c;)V

    move-object p0, v1

    :goto_26
    return-object p0
.end method

.method private j6(Labcd/aH;JLabcd/CG;)Labcd/uH$c;
    .registers 12

    new-instance v6, Labcd/uH$c;

    iget-object v5, p0, Labcd/uH;->Hw:Ljava/lang/ref/ReferenceQueue;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/uH$c;-><init>(Labcd/aH;JLabcd/CG;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p1, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    iget p2, v6, Labcd/uH$c;->FH:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-object v6
.end method

.method static final j6(Labcd/aH;)V
    .registers 2

    sget-object v0, Labcd/uH;->DW:Labcd/uH;

    invoke-direct {v0, p0}, Labcd/uH;->FH(Labcd/aH;)V

    return-void
.end method

.method private j6(Labcd/uH$c;)V
    .registers 5

    iget-object v0, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    iget v1, p1, Labcd/uH$c;->FH:I

    neg-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p1, p1, Labcd/uH$c;->j6:Labcd/aH;

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/aH;)V

    return-void
.end method

.method public static j6(Labcd/vH;)V
    .registers 3

    new-instance v0, Labcd/uH;

    invoke-direct {v0, p0}, Labcd/uH;-><init>(Labcd/vH;)V

    sget-object v1, Labcd/uH;->DW:Labcd/uH;

    if-eqz v1, :cond_c

    invoke-direct {v1}, Labcd/uH;->v5()V

    :cond_c
    sput-object v0, Labcd/uH;->DW:Labcd/uH;

    invoke-virtual {p0}, Labcd/vH;->v5()I

    move-result v0

    sput v0, Labcd/uH;->FH:I

    invoke-static {p0}, Labcd/EG;->j6(Labcd/vH;)V

    return-void
.end method

.method private v5(Labcd/aH;J)I
    .registers 4

    iget p1, p1, Labcd/aH;->v5:I

    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->j6(IJ)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x1

    iget p2, p0, Labcd/uH;->v5:I

    rem-int/2addr p1, p2

    return p1
.end method

.method private v5()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Labcd/uH;->v5:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Labcd/uH;->FH()V

    return-void

    :cond_9
    iget-object v1, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/uH$a;

    move-object v2, v1

    :goto_12
    if-nez v2, :cond_20

    iget-object v2, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Labcd/tH$a$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    invoke-virtual {v2}, Labcd/uH$a;->j6()V

    iget-object v2, v2, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_12
.end method
