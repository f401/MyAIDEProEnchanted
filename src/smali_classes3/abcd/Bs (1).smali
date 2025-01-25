.class public abstract Labcd/Bs;
.super Labcd/Ds;


# instance fields
.field private final j6:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Labcd/Ds;-><init>()V

    iput p1, p0, Labcd/Bs;->j6:I

    return-void
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 3

    check-cast p1, Labcd/Bs;

    iget p1, p1, Labcd/Bs;->j6:I

    iget v0, p0, Labcd/Bs;->j6:I

    if-ge v0, p1, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    if-le v0, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final J8()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final Ws()I
    .registers 2

    iget v0, p0, Labcd/Bs;->j6:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_16

    iget v0, p0, Labcd/Bs;->j6:I

    check-cast p1, Labcd/Bs;

    iget p1, p1, Labcd/Bs;->j6:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Labcd/Bs;->j6:I

    return v0
.end method

.method public final lg()J
    .registers 3

    iget v0, p0, Labcd/Bs;->j6:I

    int-to-long v0, v0

    return-wide v0
.end method
