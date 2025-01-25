.class public Labcd/vH;
.super Ljava/lang/Object;


# instance fields
.field private DW:J

.field private FH:I

.field private Hw:Z

.field private Zo:I

.field private j6:I

.field private v5:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Labcd/vH;->j6:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Labcd/vH;->DW:J

    const/16 v0, 0x2000

    iput v0, p0, Labcd/vH;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/vH;->Hw:Z

    const/high16 v0, 0xa00000

    iput v0, p0, Labcd/vH;->v5:I

    const/high16 v0, 0x3200000

    iput v0, p0, Labcd/vH;->Zo:I

    return-void
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-wide v0, p0, Labcd/vH;->DW:J

    return-wide v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/vH;->j6:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/vH;->FH:I

    return v0
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Labcd/vH;->Hw:Z

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/vH;->v5:I

    return v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/vH;->Zo:I

    return v0
.end method
