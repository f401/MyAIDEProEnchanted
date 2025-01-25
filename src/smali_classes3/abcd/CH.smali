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
            "Ljava/lang/ref/ReferenceQueue<",
            "[B>;"
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

    move-result p1

    iput p1, p0, Labcd/CH;->DW:I

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Labcd/CH;->FH:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private j6()V
    .registers 6

    :goto_0
    iget-object v0, p0, Labcd/CH;->FH:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Labcd/CH$a;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-wide v1, p0, Labcd/CH;->Hw:J

    iget v0, v0, Labcd/CH$a;->j6:I

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Labcd/CH;->Hw:J

    goto :goto_0
.end method


# virtual methods
.method j6([BII)Labcd/CH$a;
    .registers 6

    invoke-virtual {p0, p1, p2}, Labcd/CH;->j6([BI)[B

    move-result-object p1

    array-length p2, p1

    if-eq p3, p2, :cond_12

    iget-wide v0, p0, Labcd/CH;->Hw:J

    int-to-long p2, p3

    sub-long/2addr v0, p2

    iput-wide v0, p0, Labcd/CH;->Hw:J

    array-length p2, p1

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p0, Labcd/CH;->Hw:J

    :cond_12
    new-instance p2, Labcd/CH$a;

    iget-object p3, p0, Labcd/CH;->FH:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2, p1, p3}, Labcd/CH$a;-><init>([BLjava/lang/ref/ReferenceQueue;)V

    return-object p2
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

    iget-wide v0, p0, Labcd/CH;->j6:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v0

    if-gez v5, :cond_22

    iget-wide v5, p0, Labcd/CH;->Hw:J

    int-to-long v7, p1

    add-long/2addr v5, v7

    cmp-long v9, v0, v5

    if-gez v9, :cond_22

    invoke-direct {p0}, Labcd/CH;->j6()V

    iget-wide v0, p0, Labcd/CH;->j6:J

    cmp-long v5, v3, v0

    if-gez v5, :cond_22

    iget-wide v3, p0, Labcd/CH;->Hw:J

    add-long/2addr v3, v7

    cmp-long v5, v0, v3

    if-gez v5, :cond_22

    return v2

    :cond_22
    iget v0, p0, Labcd/CH;->DW:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2e

    :goto_27
    iget-wide p2, p0, Labcd/CH;->Hw:J

    int-to-long v2, p1

    add-long/2addr p2, v2

    iput-wide p2, p0, Labcd/CH;->Hw:J

    return v1

    :cond_2e
    shr-int/lit8 v0, p1, 0xa

    invoke-virtual {p2}, Labcd/MH;->gW()I

    move-result p2

    shr-int/lit8 p2, p2, 0x14

    invoke-virtual {p3}, Labcd/MH;->gW()I

    move-result p3

    shr-int/lit8 p3, p3, 0x15

    add-int/2addr p2, p3

    if-ge v0, p2, :cond_40

    goto :goto_27

    :cond_40
    return v2
.end method

.method j6([BI)[B
    .registers 5

    array-length v0, p1

    if-eq v0, p2, :cond_a

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_a
    return-object p1
.end method
