.class public Labcd/CI;
.super Labcd/AE$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/AE$a;"
    }
.end annotation


# instance fields
.field private EQ:J

.field private we:I


# direct methods
.method public constructor <init>(Labcd/YD;)V
    .locals 0

    invoke-direct {p0, p1}, Labcd/AE$a;-><init>(Labcd/YD;)V

    return-void
.end method


# virtual methods
.method public DW(I)V
    .locals 0

    iput p1, p0, Labcd/CI;->we:I

    return-void
.end method

.method public aM()I
    .locals 1

    iget v0, p0, Labcd/CI;->we:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Labcd/CI;->EQ:J

    return-wide v0
.end method

.method public j6(J)V
    .locals 1

    iput-wide p1, p0, Labcd/CI;->EQ:J

    return-void
.end method
