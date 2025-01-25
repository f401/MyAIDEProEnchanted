.class Labcd/SG;
.super Labcd/UH;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/SG$a;
    }
.end annotation


# instance fields
.field DW:J

.field FH:J

.field private Hw:J

.field j6:Labcd/aH;

.field private v5:Labcd/yE;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/UH;-><init>()V

    return-void
.end method

.method static j6(Labcd/aH;JJ)Labcd/SG;
    .registers 6

    new-instance v0, Labcd/RG;

    invoke-direct {v0}, Labcd/RG;-><init>()V

    iput-object p0, v0, Labcd/SG;->j6:Labcd/aH;

    iput-wide p1, v0, Labcd/SG;->DW:J

    iput-wide p3, v0, Labcd/SG;->FH:J

    return-object v0
.end method

.method static j6(Labcd/aH;JJJ)Labcd/SG;
    .registers 9

    new-instance v0, Labcd/SG$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/SG$a;-><init>(Labcd/SG$a;)V

    iput-object p0, v0, Labcd/SG;->j6:Labcd/aH;

    iput-wide p1, v0, Labcd/SG;->DW:J

    iput-wide p3, v0, Labcd/SG;->FH:J

    iput-wide p5, v0, Labcd/SG;->Hw:J

    return-object v0
.end method

.method static j6(Labcd/aH;JJLabcd/yE;)Labcd/SG;
    .registers 8

    new-instance v0, Labcd/SG$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/SG$a;-><init>(Labcd/SG$a;)V

    iput-object p0, v0, Labcd/SG;->j6:Labcd/aH;

    iput-wide p1, v0, Labcd/SG;->DW:J

    iput-wide p3, v0, Labcd/SG;->FH:J

    iput-object p5, v0, Labcd/SG;->v5:Labcd/yE;

    return-object v0
.end method


# virtual methods
.method public FH()I
    .registers 5

    iget-wide v0, p0, Labcd/SG;->FH:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public j6()Labcd/yE;
    .registers 4

    iget-object v0, p0, Labcd/SG;->v5:Labcd/yE;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Labcd/UH;->DW()I

    move-result v0

    if-nez v0, :cond_18

    :try_start_a
    iget-object v0, p0, Labcd/SG;->j6:Labcd/aH;

    iget-wide v1, p0, Labcd/SG;->Hw:J

    invoke-virtual {v0, v1, v2}, Labcd/aH;->j6(J)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/SG;->v5:Labcd/yE;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_18

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :cond_18
    :goto_18
    iget-object v0, p0, Labcd/SG;->v5:Labcd/yE;

    return-object v0
.end method
