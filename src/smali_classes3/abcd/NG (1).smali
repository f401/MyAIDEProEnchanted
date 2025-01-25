.class Labcd/NG;
.super Labcd/GH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/OG;->j6(Labcd/wH;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final J0:Labcd/OG;

.field private final J8:Labcd/FE;

.field private final Ws:Labcd/wH;

.field private we:J


# direct methods
.method constructor <init>(Labcd/OG;Ljava/io/InputStream;Labcd/FE;Labcd/wH;)V
    .registers 5

    iput-object p1, p0, Labcd/NG;->J0:Labcd/OG;

    iput-object p3, p0, Labcd/NG;->J8:Labcd/FE;

    iput-object p4, p0, Labcd/NG;->Ws:Labcd/wH;

    invoke-direct {p0, p2}, Labcd/GH;-><init>(Ljava/io/InputStream;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Labcd/NG;->we:J

    return-void
.end method


# virtual methods
.method protected FH()Ljava/io/InputStream;
    .registers 7

    iget-object v0, p0, Labcd/NG;->J8:Labcd/FE;

    instance-of v1, v0, Labcd/OG;

    if-eqz v1, :cond_f

    check-cast v0, Labcd/OG;

    iget-object v1, p0, Labcd/NG;->Ws:Labcd/wH;

    invoke-static {v0, v1}, Labcd/OG;->j6(Labcd/OG;Labcd/wH;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    :goto_13
    iget-wide v1, p0, Labcd/NG;->we:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_35

    instance-of v1, v0, Labcd/GH;

    if-eqz v1, :cond_29

    move-object v1, v0

    check-cast v1, Labcd/GH;

    invoke-virtual {v1}, Labcd/GH;->DW()J

    move-result-wide v1

    :goto_26
    iput-wide v1, p0, Labcd/NG;->we:J

    goto :goto_35

    :cond_29
    instance-of v1, v0, Labcd/JE;

    if-eqz v1, :cond_35

    move-object v1, v0

    check-cast v1, Labcd/JE;

    invoke-virtual {v1}, Labcd/JE;->j6()J

    move-result-wide v1

    goto :goto_26

    :cond_35
    :goto_35
    return-object v0
.end method

.method protected j6()J
    .registers 6

    iget-wide v0, p0, Labcd/NG;->we:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    iget-object v0, p0, Labcd/NG;->J8:Labcd/FE;

    invoke-virtual {v0}, Labcd/FE;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/NG;->we:J

    :cond_10
    iget-wide v0, p0, Labcd/NG;->we:J

    return-wide v0
.end method
