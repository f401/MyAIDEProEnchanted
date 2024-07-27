.class Labcd/CH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/CH$a;
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private Hw:J

.field private final j6:J


# direct methods
.method constructor <init>(Labcd/NH;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/NH;->Hw()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/CH;->j6:J

    invoke-virtual {p1}, Labcd/NH;->FH()I

    move-result v0

    iput v0, p0, Labcd/CH;->DW:I

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Labcd/CH;->FH:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private j6()V
    .registers 5

    :goto_0
    iget-object v0, p0, Labcd/CH;->FH:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Labcd/CH$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Labcd/CH;->Hw:J

    iget v0, v0, Labcd/CH$a;->j6:I

    int-to-long v0, v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Labcd/CH;->Hw:J

    goto :goto_0
.end method


# virtual methods
.method j6([BII)Labcd/CH$a;
    .registers 10

    invoke-virtual {p0, p1, p2}, Labcd/CH;->j6([BI)[B

    move-result-object v0

    array-length v1, v0

    if-eq p3, v1, :cond_0

    iget-wide v2, p0, Labcd/CH;->Hw:J

    int-to-long v4, p3

    sub-long/2addr v2, v4

    iput-wide v2, p0, Labcd/CH;->Hw:J

    iget-wide v2, p0, Labcd/CH;->Hw:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/CH;->Hw:J

    :cond_0
    new-instance v1, Labcd/CH$a;

    iget-object v2, p0, Labcd/CH;->FH:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v2}, Labcd/CH$a;-><init>([BLjava/lang/ref/ReferenceQueue;)V

    return-object v1
.end method

.method j6(I)V
    .registers 6

    iget-wide v0, p0, Labcd/CH;->Hw:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Labcd/CH;->Hw:J

    return-void
.end method

.method j6(ILabcd/MH;Labcd/MH;)Z
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-wide v2, p0, Labcd/CH;->j6:J

    cmp-long v4, v8, v2

    if-gez v4, :cond_1

    iget-wide v4, p0, Labcd/CH;->Hw:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-direct {p0}, Labcd/CH;->j6()V

    iget-wide v2, p0, Labcd/CH;->j6:J

    cmp-long v4, v8, v2

    if-gez v4, :cond_1

    iget-wide v4, p0, Labcd/CH;->Hw:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Labcd/CH;->DW:I

    if-ge p1, v2, :cond_2

    iget-wide v2, p0, Labcd/CH;->Hw:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/CH;->Hw:J

    move v0, v1

    goto :goto_0

    :cond_2
    shr-int/lit8 v2, p1, 0xa

    invoke-virtual {p2}, Labcd/MH;->gW()I

    move-result v3

    shr-int/lit8 v3, v3, 0x14

    invoke-virtual {p3}, Labcd/MH;->gW()I

    move-result v4

    shr-int/lit8 v4, v4, 0x15

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    iget-wide v2, p0, Labcd/CH;->Hw:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/CH;->Hw:J

    move v0, v1

    goto :goto_0
.end method

.method j6([BI)[B
    .registers 5

    const/4 v1, 0x0

    array-length v0, p1

    if-eq v0, p2, :cond_0

    new-array v0, p2, [B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
