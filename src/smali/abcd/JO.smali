.class public Labcd/JO;
.super Labcd/yO;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/yO;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public j6([BI)I
    .registers 6

    invoke-virtual {p0}, Labcd/yO;->FH()V

    iget-wide v0, p0, Labcd/yO;->Zo:J

    invoke-static {v0, v1, p1, p2}, Labcd/ZO;->j6(J[BI)V

    iget-wide v0, p0, Labcd/yO;->VH:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Labcd/ZO;->j6(J[BI)V

    iget-wide v0, p0, Labcd/yO;->gn:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Labcd/ZO;->j6(J[BI)V

    iget-wide v0, p0, Labcd/yO;->u7:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Labcd/ZO;->j6(J[BI)V

    iget-wide v0, p0, Labcd/yO;->tp:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Labcd/ZO;->j6(J[BI)V

    iget-wide v0, p0, Labcd/yO;->EQ:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Labcd/ZO;->j6(J[BI)V

    iget-wide v0, p0, Labcd/yO;->we:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Labcd/ZO;->j6(J[BI)V

    iget-wide v0, p0, Labcd/yO;->J0:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Labcd/ZO;->j6(J[BI)V

    invoke-virtual {p0}, Labcd/JO;->reset()V

    const/16 v0, 0x40

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-512"

    return-object v0
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Labcd/yO;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Labcd/yO;->Zo:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Labcd/yO;->VH:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Labcd/yO;->gn:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Labcd/yO;->u7:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Labcd/yO;->tp:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Labcd/yO;->EQ:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Labcd/yO;->we:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Labcd/yO;->J0:J

    return-void
.end method
