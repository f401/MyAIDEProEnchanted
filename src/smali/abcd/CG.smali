.class abstract Labcd/CG;
.super Ljava/lang/Object;


# instance fields
.field protected final DW:J

.field protected final FH:J

.field protected final j6:Labcd/aH;


# direct methods
.method protected constructor <init>(Labcd/aH;JI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/CG;->j6:Labcd/aH;

    iput-wide p2, p0, Labcd/CG;->DW:J

    iget-wide v0, p0, Labcd/CG;->DW:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/CG;->FH:J

    return-void
.end method


# virtual methods
.method final j6()I
    .registers 5

    iget-wide v0, p0, Labcd/CG;->FH:J

    iget-wide v2, p0, Labcd/CG;->DW:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected abstract j6(ILjava/util/zip/Inflater;)I
.end method

.method protected abstract j6(I[BII)I
.end method

.method final j6(JLjava/util/zip/Inflater;)I
    .registers 7

    iget-wide v0, p0, Labcd/CG;->DW:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p3}, Labcd/CG;->j6(ILjava/util/zip/Inflater;)I

    move-result v0

    return v0
.end method

.method final j6(J[BII)I
    .registers 9

    iget-wide v0, p0, Labcd/CG;->DW:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p3, p4, p5}, Labcd/CG;->j6(I[BII)I

    move-result v0

    return v0
.end method

.method abstract j6(Labcd/OH;JILjava/security/MessageDigest;)V
.end method

.method final j6(Labcd/aH;J)Z
    .registers 6

    iget-object v0, p0, Labcd/CG;->j6:Labcd/aH;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Labcd/CG;->DW:J

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Labcd/CG;->FH:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
