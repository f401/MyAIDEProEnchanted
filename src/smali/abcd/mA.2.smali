.class public Labcd/mA;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Labcd/hA;

.field public final FH:Labcd/gA;

.field public final Hw:Labcd/eA;

.field public final VH:J

.field public final Zo:Labcd/Yz;

.field public final gn:I

.field public final j6:Labcd/Wz;

.field public final u7:I

.field public final v5:Labcd/Tz;


# direct methods
.method public constructor <init>(JLabcd/Wz;Labcd/hA;Labcd/gA;Labcd/eA;Labcd/Tz;Labcd/Yz;II)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Labcd/mA;->VH:J

    iput-object p3, p0, Labcd/mA;->j6:Labcd/Wz;

    iput-object p4, p0, Labcd/mA;->DW:Labcd/hA;

    iput-object p5, p0, Labcd/mA;->FH:Labcd/gA;

    iput-object p6, p0, Labcd/mA;->Hw:Labcd/eA;

    iput p9, p0, Labcd/mA;->gn:I

    iput p10, p0, Labcd/mA;->u7:I

    iput-object p7, p0, Labcd/mA;->v5:Labcd/Tz;

    iput-object p8, p0, Labcd/mA;->Zo:Labcd/Yz;

    return-void
.end method


# virtual methods
.method public j6(J)Z
    .registers 6

    iget-wide v0, p0, Labcd/mA;->VH:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
