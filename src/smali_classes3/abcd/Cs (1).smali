.class public abstract Labcd/Cs;
.super Labcd/Ds;


# instance fields
.field private final j6:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Labcd/Ds;-><init>()V

    iput-wide p1, p0, Labcd/Cs;->j6:J

    return-void
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 6

    check-cast p1, Labcd/Cs;

    iget-wide v0, p1, Labcd/Cs;->j6:J

    iget-wide v2, p0, Labcd/Cs;->j6:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    cmp-long p1, v2, v0

    if-lez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final J8()Z
    .registers 6

    iget-wide v0, p0, Labcd/Cs;->j6:J

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final Ws()I
    .registers 3

    iget-wide v0, p0, Labcd/Cs;->j6:J

    long-to-int v1, v0

    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-wide v0, p0, Labcd/Cs;->j6:J

    check-cast p1, Labcd/Cs;

    iget-wide v2, p1, Labcd/Cs;->j6:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public final hashCode()I
    .registers 5

    iget-wide v0, p0, Labcd/Cs;->j6:J

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public final lg()J
    .registers 3

    iget-wide v0, p0, Labcd/Cs;->j6:J

    return-wide v0
.end method
