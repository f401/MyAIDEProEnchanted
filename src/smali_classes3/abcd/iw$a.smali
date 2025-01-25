.class Labcd/iw$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private j6:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Labcd/hw;)V
    .registers 2

    invoke-direct {p0}, Labcd/iw$a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(J)Z
    .registers 7

    iget-object v0, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-lez v2, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public j6(J)J
    .registers 12

    :cond_0
    iget-object v0, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    cmp-long v6, v4, p1

    if-nez v6, :cond_21

    rem-long v4, v0, v2

    const-wide/16 v6, 0x3e7

    cmp-long v8, v4, v6

    if-gez v8, :cond_1a

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_27

    :cond_1a
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    mul-long p1, p1, v2

    add-long/2addr p1, v6

    return-wide p1

    :cond_21
    cmp-long v6, p1, v4

    if-lez v6, :cond_30

    mul-long v2, v2, p1

    :goto_27
    iget-object v4, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2

    :cond_30
    iget-object v0, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    mul-long p1, p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-wide p1
.end method
