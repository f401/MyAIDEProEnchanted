.class Labcd/TG;
.super Labcd/MH;


# instance fields
.field XL:Labcd/aH;

.field aM:J

.field j3:J


# direct methods
.method constructor <init>(Labcd/iG;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/MH;-><init>(Labcd/iG;)V

    return-void
.end method


# virtual methods
.method protected Mr()V
    .registers 2

    invoke-super {p0}, Labcd/MH;->Mr()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TG;->XL:Labcd/aH;

    return-void
.end method

.method public j6(Labcd/UH;)V
    .registers 4

    check-cast p1, Labcd/SG;

    iget-object v0, p1, Labcd/SG;->j6:Labcd/aH;

    iput-object v0, p0, Labcd/TG;->XL:Labcd/aH;

    iget-wide v0, p1, Labcd/SG;->DW:J

    iput-wide v0, p0, Labcd/TG;->aM:J

    iget-wide v0, p1, Labcd/SG;->FH:J

    iput-wide v0, p0, Labcd/TG;->j3:J

    return-void
.end method
