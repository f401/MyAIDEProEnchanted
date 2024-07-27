.class public Labcd/lG;
.super Labcd/iG;


# instance fields
.field private J0:[B

.field private J8:Ljava/lang/String;

.field private we:Labcd/iG;


# direct methods
.method protected constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/iG;-><init>(Labcd/YD;)V

    return-void
.end method


# virtual methods
.method public final aM()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final j3()Labcd/iG;
    .registers 2

    iget-object v0, p0, Labcd/lG;->we:Labcd/iG;

    return-object v0
.end method

.method j6(Labcd/qG;)V
    .registers 3

    invoke-virtual {p1, p0}, Labcd/qG;->j6(Labcd/iG;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Labcd/lG;->j6(Labcd/qG;[B)V

    return-void
.end method

.method j6(Labcd/qG;[B)V
    .registers 7

    new-instance v0, Labcd/EK;

    invoke-direct {v0}, Labcd/EK;-><init>()V

    const/16 v1, 0x35

    iput v1, v0, Labcd/EK;->j6:I

    const/16 v1, 0xa

    invoke-static {p0, p2, v1, v0}, Labcd/hE;->j6(Labcd/YD;[BBLabcd/EK;)I

    move-result v1

    iget-object v2, p1, Labcd/qG;->FH:Labcd/uE;

    const/4 v3, 0x7

    invoke-virtual {v2, p2, v3}, Labcd/uE;->v5([BI)V

    iget-object v2, p1, Labcd/qG;->FH:Labcd/uE;

    invoke-virtual {p1, v2, v1}, Labcd/qG;->j6(Labcd/YD;I)Labcd/iG;

    move-result-object v1

    iput-object v1, p0, Labcd/lG;->we:Labcd/iG;

    iget v1, v0, Labcd/EK;->j6:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Labcd/EK;->j6:I

    invoke-static {p2, v1}, Labcd/IK;->Zo([BI)I

    move-result v0

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, p2, v1, v0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/lG;->J8:Ljava/lang/String;

    invoke-virtual {p1}, Labcd/qG;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Labcd/lG;->J0:[B

    :cond_0
    iget v0, p0, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/iG;->EQ:I

    return-void
.end method
