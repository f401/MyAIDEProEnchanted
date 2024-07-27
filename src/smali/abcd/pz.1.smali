.class public Labcd/pz;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/nz;


# instance fields
.field private final DW:I

.field private final j6:J


# direct methods
.method public constructor <init>(JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Labcd/pz;->j6:J

    iput p3, p0, Labcd/pz;->DW:I

    return-void
.end method


# virtual methods
.method public j6(I)J
    .registers 8

    iget-wide v0, p0, Labcd/pz;->j6:J

    long-to-double v0, v0

    iget v2, p0, Labcd/pz;->DW:I

    int-to-double v2, v2

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method
