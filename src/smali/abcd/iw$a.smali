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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

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
    .registers 8

    iget-object v0, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(J)J
    .registers 14

    const-wide/16 v8, 0x3e7

    const-wide/16 v6, 0x3e8

    :cond_0
    iget-object v0, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    div-long v0, v2, v6

    cmp-long v4, v0, p1

    if-nez v4, :cond_2

    rem-long v0, v2, v6

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    :goto_0
    iget-object v4, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-wide v0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    mul-long v0, p1, v6

    add-long/2addr v0, v8

    goto :goto_1

    :cond_2
    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    mul-long v0, v6, p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Labcd/iw$a;->j6:Ljava/util/concurrent/atomic/AtomicLong;

    mul-long v0, p1, v6

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_1
.end method
