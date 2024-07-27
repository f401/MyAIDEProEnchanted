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
    .registers 7

    iput-object p1, p0, Labcd/NG;->J0:Labcd/OG;

    iput-object p3, p0, Labcd/NG;->J8:Labcd/FE;

    iput-object p4, p0, Labcd/NG;->Ws:Labcd/wH;

    invoke-direct {p0, p2}, Labcd/GH;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/NG;->we:J

    return-void
.end method


# virtual methods
.method protected FH()Ljava/io/InputStream;
    .registers 7

    iget-object v0, p0, Labcd/NG;->J8:Labcd/FE;

    instance-of v1, v0, Labcd/OG;

    if-eqz v1, :cond_1

    check-cast v0, Labcd/OG;

    iget-object v1, p0, Labcd/NG;->Ws:Labcd/wH;

    invoke-static {v0, v1}, Labcd/OG;->j6(Labcd/OG;Labcd/wH;)Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    iget-wide v2, p0, Labcd/NG;->we:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    instance-of v0, v1, Labcd/GH;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Labcd/GH;

    invoke-virtual {v0}, Labcd/GH;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/NG;->we:J

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v0, v1, Labcd/JE;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Labcd/JE;

    invoke-virtual {v0}, Labcd/JE;->j6()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/NG;->we:J

    goto :goto_1
.end method

.method protected j6()J
    .registers 5

    iget-wide v0, p0, Labcd/NG;->we:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/NG;->J8:Labcd/FE;

    invoke-virtual {v0}, Labcd/FE;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/NG;->we:J

    :cond_0
    iget-wide v0, p0, Labcd/NG;->we:J

    return-wide v0
.end method
