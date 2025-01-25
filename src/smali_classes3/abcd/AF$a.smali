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
    .registers 3

    invoke-direct {p0, p1}, Labcd/CF;-><init>(Labcd/UE;)V

    new-instance p1, Labcd/XJ;

    iget-object v0, p0, Labcd/wF;->DW:Labcd/IE;

    invoke-direct {p1, v0}, Labcd/XJ;-><init>(Labcd/IE;)V

    iput-object p1, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-static {}, Labcd/KC;->gn()Labcd/KC;

    move-result-object p1

    iput-object p1, p0, Labcd/AF$a;->tp:Labcd/KC;

    return-void
.end method

.method private static DW(I)Z
    .registers 2

    if-eqz p0, :cond_c

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private FH(II)V
    .registers 7

    invoke-direct {p0, p1}, Labcd/AF$a;->j6(I)Labcd/TJ;

    move-result-object v0

    if-eqz v0, :cond_4c

    sget-object v1, Labcd/rE;->j6:Labcd/rE;

    iget-object v2, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v2, p1}, Labcd/YJ;->FH(I)I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/rE;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, p0, Labcd/AF$a;->EQ:Labcd/MC;

    iget-object v1, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    iget-object v2, p0, Labcd/wF;->DW:Labcd/IE;

    iget-object v3, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v3, p1}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object p1

    invoke-virtual {v0, v1, p2, v2, p1}, Labcd/MC;->j6([BILabcd/IE;Labcd/YD;)V

    goto :goto_4c

    :cond_28
    new-instance v1, Labcd/QC;

    iget-object v2, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->v5()[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Labcd/QC;-><init>([BI)V

    invoke-virtual {v0}, Labcd/TJ;->u7()[B

    move-result-object p2

    invoke-virtual {v0}, Labcd/TJ;->tp()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Labcd/QC;->j6([BI)V

    iget-object p2, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {p2, p1}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object p1

    invoke-virtual {v1, p1}, Labcd/QC;->j6(Labcd/rE;)V

    iget-object p1, p0, Labcd/AF$a;->EQ:Labcd/MC;

    invoke-virtual {p1, v1}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private j6(I)Labcd/TJ;
    .registers 4

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    const-class v1, Labcd/TJ;

    invoke-virtual {v0, p1, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/AF$a;->we:Labcd/yE;

    return-object v0
.end method

.method protected Hw()Z
    .registers 9

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {p0}, Labcd/CF;->v5()Labcd/TJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    iget-object v1, p0, Labcd/wF;->VH:[Labcd/mG;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v0, p0, Labcd/AF$a;->u7:Labcd/XJ;

    iget-object v1, p0, Labcd/wF;->VH:[Labcd/mG;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v0, p0, Labcd/AF$a;->tp:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v0

    iput-object v0, p0, Labcd/AF$a;->EQ:Labcd/MC;

    const/4 v0, 0x0

    :cond_26
    :goto_26
    iget-object v1, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->EQ()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Labcd/AF$a;->EQ:Labcd/MC;

    invoke-virtual {v1}, Labcd/MC;->DW()V

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/AF$a;->EQ:Labcd/MC;

    if-eqz v0, :cond_39

    return v2

    :cond_39
    :try_start_39
    invoke-virtual {p0}, Labcd/wF;->j6()Labcd/EE;

    move-result-object v0

    iget-object v4, p0, Labcd/AF$a;->tp:Labcd/KC;

    invoke-virtual {v4, v0}, Labcd/KC;->j6(Labcd/EE;)Labcd/yE;

    move-result-object v4

    iput-object v4, p0, Labcd/AF$a;->we:Labcd/yE;

    invoke-virtual {v0}, Labcd/EE;->FH()V
    :try_end_48
    .catch Labcd/zD; {:try_start_39 .. :try_end_48} :catch_49

    return v3

    :catch_49
    move-exception v0

    iput-object v1, p0, Labcd/AF$a;->we:Labcd/yE;

    return v2

    :cond_4d
    iget-object v1, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v1, v3}, Labcd/YJ;->FH(I)I

    move-result v1

    iget-object v4, p0, Labcd/AF$a;->u7:Labcd/XJ;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Labcd/YJ;->FH(I)I

    move-result v4

    if-ne v1, v4, :cond_68

    iget-object v6, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v6, v3, v5}, Labcd/YJ;->j6(II)Z

    move-result v6

    if-eqz v6, :cond_68

    :goto_64
    invoke-direct {p0, v3, v2}, Labcd/AF$a;->FH(II)V

    goto :goto_26

    :cond_68
    iget-object v6, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v6, v2}, Labcd/YJ;->FH(I)I

    move-result v6

    if-ne v6, v1, :cond_7c

    iget-object v7, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v7, v2, v3}, Labcd/YJ;->j6(II)Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-direct {p0, v5, v2}, Labcd/AF$a;->FH(II)V

    goto :goto_26

    :cond_7c
    if-ne v6, v4, :cond_87

    iget-object v7, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v7, v2, v5}, Labcd/YJ;->j6(II)Z

    move-result v7

    if-eqz v7, :cond_87

    goto :goto_64

    :cond_87
    invoke-static {v6}, Labcd/AF$a;->DW(I)Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-direct {p0, v2, v3}, Labcd/AF$a;->FH(II)V

    const/4 v0, 0x1

    :cond_91
    invoke-static {v1}, Labcd/AF$a;->DW(I)Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-direct {p0, v3, v5}, Labcd/AF$a;->FH(II)V

    const/4 v0, 0x1

    :cond_9b
    invoke-static {v4}, Labcd/AF$a;->DW(I)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v0, 0x3

    invoke-direct {p0, v5, v0}, Labcd/AF$a;->FH(II)V

    const/4 v0, 0x1

    :cond_a6
    iget-object v1, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->u7()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Labcd/AF$a;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->j6()V

    goto/16 :goto_26
.end method
