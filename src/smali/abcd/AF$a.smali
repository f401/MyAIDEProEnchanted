.class Labcd/AF$a;
.super Labcd/CF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private EQ:Labcd/MC;

.field private final tp:Labcd/KC;

.field private final u7:Labcd/XJ;

.field private we:Labcd/yE;


# direct methods
.method constructor <init>(Labcd/UE;)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/CF;-><init>(Labcd/UE;)V

    new-instance v0, Labcd/XJ;

    iget-object v1, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/XJ;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-static {}, Labcd/KC;->gn()Labcd/KC;

    move-result-object v0

    iput-object v0, p0, Labcd/AF$a;->tp:Labcd/KC;

    return-void
.end method

.method private static DW(I)Z
    .registers 2

    if-eqz p0, :cond_0

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private FH(II)V
    .registers 7

    invoke-direct {p0, p1}, Labcd/AF$a;->j6(I)Labcd/TJ;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Labcd/rE;->j6:Labcd/rE;

    iget-object v2, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v2, p1}, Labcd/YJ;->FH(I)I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/rE;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Labcd/AF$a;->EQ:Labcd/MC;

    iget-object v1, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    iget-object v2, p0, Labcd/wF;->DW:Labcd/IE;

    iget-object v3, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v3, p1}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Labcd/MC;->j6([BILabcd/IE;Labcd/YD;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Labcd/QC;

    iget-object v2, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->v5()[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Labcd/QC;-><init>([BI)V

    invoke-virtual {v0}, Labcd/TJ;->u7()[B

    move-result-object v2

    invoke-virtual {v0}, Labcd/TJ;->tp()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Labcd/QC;->j6([BI)V

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/QC;->j6(Labcd/rE;)V

    iget-object v0, p0, Labcd/AF$a;->EQ:Labcd/MC;

    invoke-virtual {v0, v1}, Labcd/MC;->DW(Labcd/QC;)V

    goto :goto_0
.end method

.method private j6(I)Labcd/TJ;
    .registers 4

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    const-class v1, Labcd/TJ;

    invoke-virtual {v0, p1, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/AF$a;->we:Labcd/yE;

    return-object v0
.end method

.method protected Hw()Z
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {p0}, Labcd/CF;->v5()Labcd/TJ;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    iget-object v3, p0, Labcd/wF;->VH:[Labcd/mG;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    iget-object v3, p0, Labcd/wF;->VH:[Labcd/mG;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v0, p0, Labcd/AF$a;->tp:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v0

    iput-object v0, p0, Labcd/AF$a;->EQ:Labcd/MC;

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->EQ()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Labcd/AF$a;->EQ:Labcd/MC;

    invoke-virtual {v3}, Labcd/MC;->DW()V

    iput-object v8, p0, Labcd/AF$a;->EQ:Labcd/MC;

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Labcd/wF;->j6()Labcd/EE;

    move-result-object v0

    iget-object v3, p0, Labcd/AF$a;->tp:Labcd/KC;

    invoke-virtual {v3, v0}, Labcd/KC;->j6(Labcd/EE;)Labcd/yE;

    move-result-object v3

    iput-object v3, p0, Labcd/AF$a;->we:Labcd/yE;

    invoke-virtual {v0}, Labcd/EE;->FH()V
    :try_end_0
    .catch Labcd/zD; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v8, p0, Labcd/AF$a;->we:Labcd/yE;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v3, v2}, Labcd/YJ;->FH(I)I

    move-result v3

    iget-object v4, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v4, v7}, Labcd/YJ;->FH(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v5, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v5, v2, v7}, Labcd/YJ;->j6(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v2, v1}, Labcd/AF$a;->FH(II)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v5, v1}, Labcd/YJ;->FH(I)I

    move-result v5

    if-ne v5, v3, :cond_4

    iget-object v6, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v6, v1, v2}, Labcd/YJ;->j6(II)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v7, v1}, Labcd/AF$a;->FH(II)V

    goto :goto_0

    :cond_4
    if-ne v5, v4, :cond_5

    iget-object v6, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v6, v1, v7}, Labcd/YJ;->j6(II)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v2, v1}, Labcd/AF$a;->FH(II)V

    goto :goto_0

    :cond_5
    invoke-static {v5}, Labcd/AF$a;->DW(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v1, v2}, Labcd/AF$a;->FH(II)V

    move v0, v2

    :cond_6
    invoke-static {v3}, Labcd/AF$a;->DW(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v2, v7}, Labcd/AF$a;->FH(II)V

    move v0, v2

    :cond_7
    invoke-static {v4}, Labcd/AF$a;->DW(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x3

    invoke-direct {p0, v7, v0}, Labcd/AF$a;->FH(II)V

    move v0, v2

    :cond_8
    iget-object v3, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->u7()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->j6()V

    goto/16 :goto_0
.end method
