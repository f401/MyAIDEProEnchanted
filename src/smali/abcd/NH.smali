.class public Labcd/NH;
.super Ljava/lang/Object;


# instance fields
.field private DW:Z

.field private EQ:I

.field private FH:Z

.field private Hw:Z

.field private J0:Ljava/util/concurrent/Executor;

.field private J8:I

.field private VH:I

.field private Zo:I

.field private gn:J

.field private j6:I

.field private tp:I

.field private u7:J

.field private v5:Z

.field private we:I


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/NH;->j6:I

    iput-boolean v1, p0, Labcd/NH;->DW:Z

    iput-boolean v1, p0, Labcd/NH;->FH:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/NH;->Hw:Z

    iput-boolean v1, p0, Labcd/NH;->v5:Z

    const/16 v0, 0x32

    iput v0, p0, Labcd/NH;->Zo:I

    const/16 v0, 0xa

    iput v0, p0, Labcd/NH;->VH:I

    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Labcd/NH;->u7:J

    const/16 v0, 0x64

    iput v0, p0, Labcd/NH;->tp:I

    const/high16 v0, 0x3200000

    iput v0, p0, Labcd/NH;->EQ:I

    const/4 v0, 0x2

    iput v0, p0, Labcd/NH;->J8:I

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/NH;->j6(Labcd/gE;)V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/NH;->j6:I

    return v0
.end method

.method public DW(I)V
    .registers 2

    iput p1, p0, Labcd/NH;->j6:I

    return-void
.end method

.method public DW(J)V
    .registers 4

    iput-wide p1, p0, Labcd/NH;->gn:J

    return-void
.end method

.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/NH;->DW:Z

    return-void
.end method

.method public EQ()Z
    .registers 2

    iget-boolean v0, p0, Labcd/NH;->Hw:Z

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/NH;->tp:I

    return v0
.end method

.method public FH(I)V
    .registers 2

    iput p1, p0, Labcd/NH;->tp:I

    return-void
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/NH;->FH:Z

    return-void
.end method

.method public Hw()J
    .registers 3

    iget-wide v0, p0, Labcd/NH;->u7:J

    return-wide v0
.end method

.method public Hw(I)V
    .registers 3

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/NH;->j6(Z)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Labcd/NH;->VH:I

    goto :goto_0
.end method

.method public J0()Z
    .registers 2

    iget-boolean v0, p0, Labcd/NH;->DW:Z

    return v0
.end method

.method public J8()Z
    .registers 2

    iget-boolean v0, p0, Labcd/NH;->FH:Z

    return v0
.end method

.method public VH()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Labcd/NH;->J0:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public VH(I)V
    .registers 2

    iput p1, p0, Labcd/NH;->we:I

    return-void
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/NH;->VH:I

    return v0
.end method

.method public Zo(I)V
    .registers 2

    iput p1, p0, Labcd/NH;->Zo:I

    return-void
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Labcd/NH;->J8:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/NH;->EQ:I

    return v0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/NH;->EQ:I

    return-void
.end method

.method public j6(J)V
    .registers 4

    iput-wide p1, p0, Labcd/NH;->u7:J

    return-void
.end method

.method public j6(Labcd/gE;)V
    .registers 7

    const-string v0, "pack"

    const-string v1, "depth"

    invoke-virtual {p0}, Labcd/NH;->u7()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->Zo(I)V

    const-string v0, "pack"

    const-string v1, "window"

    invoke-virtual {p0}, Labcd/NH;->Zo()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->Hw(I)V

    const-string v0, "pack"

    const-string v1, "windowmemory"

    invoke-virtual {p0}, Labcd/NH;->v5()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Labcd/NH;->DW(J)V

    const-string v0, "pack"

    const-string v1, "deltacachesize"

    invoke-virtual {p0}, Labcd/NH;->Hw()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Labcd/NH;->j6(J)V

    const-string v0, "pack"

    const-string v1, "deltacachelimit"

    invoke-virtual {p0}, Labcd/NH;->FH()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->FH(I)V

    const-string v0, "pack"

    const-string v1, "compression"

    const-string v2, "core"

    const-string v3, "compression"

    invoke-virtual {p0}, Labcd/NH;->DW()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->DW(I)V

    const-string v0, "pack"

    const-string v1, "indexversion"

    invoke-virtual {p0}, Labcd/NH;->gn()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->v5(I)V

    const-string v0, "core"

    const-string v1, "bigfilethreshold"

    invoke-virtual {p0}, Labcd/NH;->j6()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->j6(I)V

    const-string v0, "pack"

    const-string v1, "threads"

    invoke-virtual {p0}, Labcd/NH;->tp()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->VH(I)V

    const-string v0, "pack"

    const-string v1, "reusedeltas"

    invoke-virtual {p0}, Labcd/NH;->J0()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->DW(Z)V

    const-string v0, "pack"

    const-string v1, "reuseobjects"

    invoke-virtual {p0}, Labcd/NH;->J8()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->FH(Z)V

    const-string v0, "pack"

    const-string v1, "deltacompression"

    invoke-virtual {p0}, Labcd/NH;->we()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Labcd/NH;->j6(Z)V

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/NH;->v5:Z

    return-void
.end method

.method public tp()I
    .registers 2

    iget v0, p0, Labcd/NH;->we:I

    return v0
.end method

.method public u7()I
    .registers 2

    iget v0, p0, Labcd/NH;->Zo:I

    return v0
.end method

.method public v5()J
    .registers 3

    iget-wide v0, p0, Labcd/NH;->gn:J

    return-wide v0
.end method

.method public v5(I)V
    .registers 2

    iput p1, p0, Labcd/NH;->J8:I

    return-void
.end method

.method public we()Z
    .registers 2

    iget-boolean v0, p0, Labcd/NH;->v5:Z

    return v0
.end method
