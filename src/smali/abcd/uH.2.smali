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
            "Ljava/lang/ref/ReferenceQueue",
            "<",
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
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
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
    .registers 11

    const/16 v1, 0x40

    const/4 v2, 0x4

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/uH;->FH(Labcd/vH;)I

    move-result v0

    iput v0, p0, Labcd/uH;->v5:I

    invoke-static {p1}, Labcd/uH;->DW(Labcd/vH;)I

    move-result v0

    iget v3, p0, Labcd/uH;->v5:I

    if-lt v3, v8, :cond_7

    if-lt v0, v8, :cond_6

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, p0, Labcd/uH;->Hw:Ljava/lang/ref/ReferenceQueue;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Labcd/uH;->Zo:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v4, p0, Labcd/uH;->v5:I

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v3, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-array v0, v0, [Labcd/uH$b;

    iput-object v0, p0, Labcd/uH;->gn:[Labcd/uH$b;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Labcd/uH;->gn:[Labcd/uH$b;

    array-length v4, v3

    if-lt v0, v4, :cond_5

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    iget v0, p0, Labcd/uH;->v5:I

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    double-to-int v0, v4

    if-ge v1, v0, :cond_2

    move v0, v1

    :cond_0
    :goto_1
    iget v1, p0, Labcd/uH;->v5:I

    if-ge v1, v0, :cond_1

    move v0, v1

    :cond_1
    iput v0, p0, Labcd/uH;->tp:I

    invoke-virtual {p1}, Labcd/vH;->FH()I

    move-result v0

    iput v0, p0, Labcd/uH;->EQ:I

    invoke-virtual {p1}, Labcd/vH;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/uH;->we:J

    invoke-virtual {p1}, Labcd/vH;->Zo()Z

    move-result v0

    iput-boolean v0, p0, Labcd/uH;->J0:Z

    invoke-virtual {p1}, Labcd/vH;->Hw()I

    move-result v0

    invoke-static {v0}, Labcd/uH;->j6(I)I

    move-result v0

    iput v0, p0, Labcd/uH;->J8:I

    iget v0, p0, Labcd/uH;->J8:I

    shl-int v0, v8, v0

    iput v0, p0, Labcd/uH;->Ws:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    iget v0, p0, Labcd/uH;->EQ:I

    if-lt v0, v8, :cond_4

    iget-wide v0, p0, Labcd/uH;->we:J

    iget v2, p0, Labcd/uH;->Ws:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    return-void

    :cond_2
    if-ge v0, v2, :cond_0

    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->windowSizeMustBeLesserThanLimit:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->openFilesMustBeAtLeast1:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v4, Labcd/uH$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Labcd/uH$b;-><init>(Labcd/uH$b;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->lockCountMustBeGreaterOrEqual1:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->tSizeMustBeGreaterOrEqual1:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static DW(Labcd/vH;)I
    .registers 3

    invoke-virtual {p0}, Labcd/vH;->FH()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private DW(Labcd/aH;J)Labcd/CG;
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->v5(Labcd/aH;J)I

    move-result v3

    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uH$a;

    invoke-direct {p0, v0, p1, p2, p3}, Labcd/uH;->j6(Labcd/uH$a;Labcd/aH;J)Labcd/CG;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->Hw(Labcd/aH;J)Labcd/uH$b;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/uH$a;

    if-eq v1, v0, :cond_1

    invoke-direct {p0, v1, p1, p2, p3}, Labcd/uH;->j6(Labcd/uH$a;Labcd/aH;J)Labcd/CG;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Labcd/uH;->FH(Labcd/aH;J)Labcd/CG;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3, v2}, Labcd/uH;->j6(Labcd/aH;JLabcd/CG;)Labcd/uH$c;

    move-result-object v5

    invoke-direct {p0, v5}, Labcd/uH;->DW(Labcd/uH$c;)V

    :goto_1
    new-instance v0, Labcd/uH$a;

    invoke-static {v1}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Labcd/uH$a;-><init>(Labcd/uH$a;Labcd/uH$c;)V

    iget-object v6, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-direct {p0}, Labcd/uH;->FH()V

    invoke-direct {p0}, Labcd/uH;->DW()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Labcd/uH;->u7:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uH$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_1
.end method

.method private DW()V
    .registers 13

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Labcd/uH;->Hw()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Labcd/uH;->j6:Ljava/util/Random;

    iget v1, p0, Labcd/uH;->v5:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v3, 0x0

    iget v1, p0, Labcd/uH;->tp:I

    add-int/lit8 v1, v1, -0x1

    move v5, v2

    move v6, v1

    :goto_1
    if-gez v6, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Labcd/uH$a;->j6()V

    invoke-direct {p0}, Labcd/uH;->FH()V

    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uH$a;

    iget-object v1, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v3

    invoke-virtual {v1, v5, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Labcd/uH;->v5:I

    if-gt v1, v0, :cond_7

    move v1, v2

    :goto_2
    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uH$a;

    move-object v4, v0

    :goto_3
    if-nez v4, :cond_3

    add-int/lit8 v4, v6, -0x1

    add-int/lit8 v0, v1, 0x1

    move v6, v4

    goto :goto_1

    :cond_3
    iget-boolean v0, v4, Labcd/uH$a;->FH:Z

    if-eqz v0, :cond_4

    move-object v0, v3

    :goto_4
    iget-object v4, v4, Labcd/uH$a;->j6:Labcd/uH$a;

    move-object v3, v0

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, v4, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-wide v8, v0, Labcd/uH$c;->Hw:J

    iget-object v0, v3, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-wide v10, v0, Labcd/uH$c;->Hw:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_6

    :cond_5
    move-object v0, v4

    move v5, v1

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_4

    :cond_7
    move v1, v0

    goto :goto_2
.end method

.method private DW(Labcd/aH;)V
    .registers 3

    invoke-virtual {p1}, Labcd/aH;->FH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method private DW(Labcd/uH$c;)V
    .registers 8

    iget-object v0, p0, Labcd/uH;->Zo:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Labcd/uH;->Zo:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iput-wide v0, p1, Labcd/uH$c;->Hw:J

    return-void
.end method

.method private static FH(Labcd/vH;)I
    .registers 6

    invoke-virtual {p0}, Labcd/vH;->Hw()I

    move-result v0

    invoke-virtual {p0}, Labcd/vH;->DW()J

    move-result-wide v2

    if-lez v0, :cond_1

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    div-long v0, v2, v0

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/32 v2, 0x77359400

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->windowSizeMustBeLesserThanLimit:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidWindowSize:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH(Labcd/aH;J)Labcd/CG;
    .registers 6

    invoke-virtual {p1}, Labcd/aH;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Labcd/uH;->J0:Z

    if-eqz v0, :cond_1

    iget v0, p0, Labcd/uH;->Ws:I

    invoke-virtual {p1, p2, p3, v0}, Labcd/aH;->j6(JI)Labcd/CG;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Labcd/uH;->Ws:I

    invoke-virtual {p1, p2, p3, v0}, Labcd/aH;->DW(JI)Labcd/AG;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/aH;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/aH;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-direct {p0, p1}, Labcd/uH;->DW(Labcd/aH;)V

    throw v0
.end method

.method private FH()V
    .registers 8

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/uH;->Hw:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Labcd/uH$c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Labcd/uH$c;->j6()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Labcd/uH;->j6(Labcd/uH$c;)V

    const/4 v2, 0x0

    iget-object v1, v0, Labcd/uH$c;->j6:Labcd/aH;

    iget-wide v4, v0, Labcd/uH$c;->DW:J

    invoke-direct {p0, v1, v4, v5}, Labcd/uH;->v5(Labcd/aH;J)I

    move-result v5

    iget-object v1, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/uH$a;

    move-object v4, v1

    :goto_1
    if-nez v4, :cond_2

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v1}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v6, v4, Labcd/uH$a;->DW:Labcd/uH$c;

    if-ne v6, v0, :cond_3

    iput-boolean v3, v4, Labcd/uH$a;->FH:Z

    move v0, v3

    goto :goto_2

    :cond_3
    iget-object v4, v4, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_1
.end method

.method private FH(Labcd/aH;)V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Labcd/uH;->v5:I

    if-lt v1, v0, :cond_0

    invoke-direct {p0}, Labcd/uH;->FH()V

    return-void

    :cond_0
    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uH$a;

    move-object v4, v0

    move v3, v2

    :goto_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    iget-object v3, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v5, v4, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-object v5, v5, Labcd/uH$c;->j6:Labcd/aH;

    if-ne v5, p1, :cond_4

    invoke-virtual {v4}, Labcd/uH$a;->j6()V

    :goto_2
    const/4 v3, 0x1

    :cond_3
    iget-object v4, v4, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_1

    :cond_4
    iget-boolean v5, v4, Labcd/uH$a;->FH:Z

    if-eqz v5, :cond_3

    goto :goto_2
.end method

.method private Hw(Labcd/aH;J)Labcd/uH$b;
    .registers 8

    iget-object v0, p0, Labcd/uH;->gn:[Labcd/uH$b;

    iget v1, p1, Labcd/aH;->v5:I

    invoke-direct {p0, v1, p2, p3}, Labcd/uH;->j6(IJ)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/uH;->gn:[Labcd/uH$b;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private Hw()Z
    .registers 5

    iget v0, p0, Labcd/uH;->EQ:I

    iget-object v1, p0, Labcd/uH;->QX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Labcd/uH;->we:J

    iget-object v2, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static j6()I
    .registers 1

    sget v0, Labcd/uH;->FH:I

    return v0
.end method

.method private static final j6(I)I
    .registers 3

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->windowSizeMustBePowerOf2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidWindowSize:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(IJ)I
    .registers 6

    iget v0, p0, Labcd/uH;->J8:I

    ushr-long v0, p2, v0

    long-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method private j6(J)J
    .registers 8

    iget v0, p0, Labcd/uH;->J8:I

    ushr-long v2, p1, v0

    shl-long v0, v2, v0

    return-wide v0
.end method

.method static final j6(Labcd/aH;J)Labcd/CG;
    .registers 8

    sget-object v0, Labcd/uH;->DW:Labcd/uH;

    invoke-direct {v0, p1, p2}, Labcd/uH;->j6(J)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Labcd/uH;->DW(Labcd/aH;J)Labcd/CG;

    move-result-object v1

    sget-object v2, Labcd/uH;->DW:Labcd/uH;

    if-eq v0, v2, :cond_0

    invoke-direct {v0}, Labcd/uH;->v5()V

    :cond_0
    return-object v1
.end method

.method private j6(Labcd/uH$a;Labcd/aH;J)Labcd/CG;
    .registers 10

    :goto_0
    if-nez p1, :cond_0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    iget-object v1, p1, Labcd/uH$a;->DW:Labcd/uH$c;

    iget-object v0, v1, Labcd/uH$c;->j6:Labcd/aH;

    if-ne v0, p2, :cond_2

    iget-wide v2, v1, Labcd/uH$c;->DW:J

    cmp-long v0, v2, p3

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CG;

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Labcd/uH;->DW(Labcd/uH$c;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Labcd/uH$a;->j6()V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_0
.end method

.method private static j6(Labcd/uH$a;)Labcd/uH$a;
    .registers 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Labcd/uH$a;->FH:Z

    if-nez v1, :cond_2

    :cond_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v1, v0, Labcd/uH$a;->DW:Labcd/uH$c;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->enqueue()Z

    iget-object v0, v0, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Labcd/uH$a;->j6:Labcd/uH$a;

    invoke-static {v1}, Labcd/uH;->j6(Labcd/uH$a;)Labcd/uH$a;

    move-result-object v2

    iget-object v1, v0, Labcd/uH$a;->j6:Labcd/uH$a;

    if-eq v2, v1, :cond_1

    new-instance v1, Labcd/uH$a;

    iget-object v0, v0, Labcd/uH$a;->DW:Labcd/uH$c;

    invoke-direct {v1, v2, v0}, Labcd/uH$a;-><init>(Labcd/uH$a;Labcd/uH$c;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private j6(Labcd/aH;JLabcd/CG;)Labcd/uH$c;
    .registers 11

    new-instance v0, Labcd/uH$c;

    iget-object v5, p0, Labcd/uH;->Hw:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/uH$c;-><init>(Labcd/aH;JLabcd/CG;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    iget v2, v0, Labcd/uH$c;->FH:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-object v0
.end method

.method static final j6(Labcd/aH;)V
    .registers 2

    sget-object v0, Labcd/uH;->DW:Labcd/uH;

    invoke-direct {v0, p0}, Labcd/uH;->FH(Labcd/aH;)V

    return-void
.end method

.method private j6(Labcd/uH$c;)V
    .registers 6

    iget-object v0, p0, Labcd/uH;->XL:Ljava/util/concurrent/atomic/AtomicLong;

    iget v1, p1, Labcd/uH$c;->FH:I

    neg-int v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p1, Labcd/uH$c;->j6:Labcd/aH;

    invoke-direct {p0, v0}, Labcd/uH;->DW(Labcd/aH;)V

    return-void
.end method

.method public static j6(Labcd/vH;)V
    .registers 3

    new-instance v0, Labcd/uH;

    invoke-direct {v0, p0}, Labcd/uH;-><init>(Labcd/vH;)V

    sget-object v1, Labcd/uH;->DW:Labcd/uH;

    if-eqz v1, :cond_0

    invoke-direct {v1}, Labcd/uH;->v5()V

    :cond_0
    sput-object v0, Labcd/uH;->DW:Labcd/uH;

    invoke-virtual {p0}, Labcd/vH;->v5()I

    move-result v0

    sput v0, Labcd/uH;->FH:I

    invoke-static {p0}, Labcd/EG;->j6(Labcd/vH;)V

    return-void
.end method

.method private v5(Labcd/aH;J)I
    .registers 6

    iget v0, p1, Labcd/aH;->v5:I

    invoke-direct {p0, v0, p2, p3}, Labcd/uH;->j6(IJ)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Labcd/uH;->v5:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private v5()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Labcd/uH;->v5:I

    if-lt v1, v0, :cond_0

    invoke-direct {p0}, Labcd/uH;->FH()V

    return-void

    :cond_0
    iget-object v0, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uH$a;

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_1

    iget-object v2, p0, Labcd/uH;->VH:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Labcd/uH$a;->j6()V

    iget-object v2, v2, Labcd/uH$a;->j6:Labcd/uH$a;

    goto :goto_1
.end method
