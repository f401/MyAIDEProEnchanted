.class public Labcd/Oy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public DW:I

.field EQ:Labcd/Ly;

.field public FH:I

.field public Hw:J

.field J0:Labcd/Fy;

.field public VH:I

.field public Zo:I

.field public gn:J

.field public j6:[B

.field tp:Labcd/Gy;

.field public u7:Ljava/lang/String;

.field public v5:[B

.field we:I


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Labcd/Dy;

    invoke-direct {v0}, Labcd/Dy;-><init>()V

    invoke-direct {p0, v0}, Labcd/Oy;-><init>(Labcd/Fy;)V

    return-void
.end method

.method public constructor <init>(Labcd/Fy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Oy;->J0:Labcd/Fy;

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Labcd/Oy;->Hw(I)I

    move-result v0

    return v0
.end method

.method public DW(I)I
    .registers 3

    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Labcd/Oy;->j6(II)I

    move-result v0

    return v0
.end method

.method public FH(I)I
    .registers 3

    iget-object v0, p0, Labcd/Oy;->EQ:Labcd/Ly;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Labcd/Ly;->j6(I)I

    move-result v0

    goto :goto_0
.end method

.method public Hw(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/Oy;->j6(IZ)I

    move-result v0

    return v0
.end method

.method public j6(I)I
    .registers 3

    iget-object v0, p0, Labcd/Oy;->tp:Labcd/Gy;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Labcd/Gy;->j6(I)I

    move-result v0

    goto :goto_0
.end method

.method public j6(II)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Labcd/Oy;->j6(IIZ)I

    move-result v0

    return v0
.end method

.method public j6(IIZ)I
    .registers 5

    new-instance v0, Labcd/Gy;

    invoke-direct {v0, p0}, Labcd/Gy;-><init>(Labcd/Oy;)V

    iput-object v0, p0, Labcd/Oy;->tp:Labcd/Gy;

    iget-object v0, p0, Labcd/Oy;->tp:Labcd/Gy;

    if-eqz p3, :cond_0

    neg-int p2, p2

    :cond_0
    invoke-virtual {v0, p1, p2}, Labcd/Gy;->DW(II)I

    move-result v0

    return v0
.end method

.method public j6(IZ)I
    .registers 4

    new-instance v0, Labcd/Ly;

    invoke-direct {v0, p0}, Labcd/Ly;-><init>(Labcd/Oy;)V

    iput-object v0, p0, Labcd/Oy;->EQ:Labcd/Ly;

    iget-object v0, p0, Labcd/Oy;->EQ:Labcd/Ly;

    if-eqz p2, :cond_0

    neg-int p1, p1

    :cond_0
    invoke-virtual {v0, p1}, Labcd/Ly;->DW(I)I

    move-result v0

    return v0
.end method

.method j6([BII)I
    .registers 10

    iget v0, p0, Labcd/Oy;->FH:I

    if-le v0, p3, :cond_0

    move v0, p3

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Labcd/Oy;->FH:I

    sub-int/2addr v1, v0

    iput v1, p0, Labcd/Oy;->FH:I

    iget-object v1, p0, Labcd/Oy;->tp:Labcd/Gy;

    iget v1, v1, Labcd/Gy;->u7:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v2, p0, Labcd/Oy;->j6:[B

    iget v3, p0, Labcd/Oy;->DW:I

    invoke-interface {v1, v2, v3, v0}, Labcd/Fy;->update([BII)V

    :cond_2
    iget-object v1, p0, Labcd/Oy;->j6:[B

    iget v2, p0, Labcd/Oy;->DW:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/Oy;->DW:I

    add-int/2addr v1, v0

    iput v1, p0, Labcd/Oy;->DW:I

    iget-wide v2, p0, Labcd/Oy;->Hw:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Oy;->Hw:J

    goto :goto_0
.end method

.method j6()V
    .registers 7

    iget-object v0, p0, Labcd/Oy;->tp:Labcd/Gy;

    iget v1, v0, Labcd/Gy;->gn:I

    iget v0, p0, Labcd/Oy;->VH:I

    if-le v1, v0, :cond_3

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Labcd/Oy;->tp:Labcd/Gy;

    iget-object v2, v1, Labcd/Gy;->v5:[B

    array-length v3, v2

    iget v1, v1, Labcd/Gy;->VH:I

    if-le v3, v1, :cond_2

    iget-object v3, p0, Labcd/Oy;->v5:[B

    array-length v4, v3

    iget v5, p0, Labcd/Oy;->Zo:I

    if-le v4, v5, :cond_2

    array-length v2, v2

    add-int/2addr v1, v0

    if-lt v2, v1, :cond_2

    array-length v1, v3

    :cond_2
    iget-object v1, p0, Labcd/Oy;->tp:Labcd/Gy;

    iget-object v2, v1, Labcd/Gy;->v5:[B

    iget v1, v1, Labcd/Gy;->VH:I

    iget-object v3, p0, Labcd/Oy;->v5:[B

    iget v4, p0, Labcd/Oy;->Zo:I

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/Oy;->Zo:I

    add-int/2addr v1, v0

    iput v1, p0, Labcd/Oy;->Zo:I

    iget-object v1, p0, Labcd/Oy;->tp:Labcd/Gy;

    iget v2, v1, Labcd/Gy;->VH:I

    add-int/2addr v2, v0

    iput v2, v1, Labcd/Gy;->VH:I

    iget-wide v2, p0, Labcd/Oy;->gn:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Oy;->gn:J

    iget v2, p0, Labcd/Oy;->VH:I

    sub-int/2addr v2, v0

    iput v2, p0, Labcd/Oy;->VH:I

    iget v2, v1, Labcd/Gy;->gn:I

    sub-int v0, v2, v0

    iput v0, v1, Labcd/Gy;->gn:I

    iget v0, v1, Labcd/Gy;->gn:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, v1, Labcd/Gy;->VH:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
