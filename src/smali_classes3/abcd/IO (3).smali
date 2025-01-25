.class public Labcd/IO;
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

    const/16 v0, 0x30

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

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Labcd/ZO;->j6(J[BI)V

    invoke-virtual {p0}, Labcd/IO;->reset()V

    const/16 p1, 0x30

    return p1
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-384"

    return-object v0
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Labcd/yO;->reset()V

    const-wide v0, -0x344462a23efa6128L  # -6.771107636816954E56

    iput-wide v0, p0, Labcd/yO;->Zo:J

    const-wide v0, 0x629a292a367cd507L  # 9.641589608180943E166

    iput-wide v0, p0, Labcd/yO;->VH:J

    const-wide v0, -0x6ea6fea5cf8f22e9L  # -4.222163200156129E-225

    iput-wide v0, p0, Labcd/yO;->gn:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Labcd/yO;->u7:J

    const-wide v0, 0x67332667ffc00b31L  # 1.3331733573491853E189

    iput-wide v0, p0, Labcd/yO;->tp:J

    const-wide v0, -0x714bb57897a7eaefL  # -7.790218494879152E-238

    iput-wide v0, p0, Labcd/yO;->EQ:J

    const-wide v0, -0x24f3d1f29b067059L  # -3.9066766103558855E130

    iput-wide v0, p0, Labcd/yO;->we:J

    const-wide v0, 0x47b5481dbefa4fa4L  # 2.8288236605994657E37

    iput-wide v0, p0, Labcd/yO;->J0:J

    return-void
.end method
