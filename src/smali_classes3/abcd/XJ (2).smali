.class public Labcd/XJ;
.super Labcd/YJ;


# static fields
.field private static final we:I


# instance fields
.field private J0:Z

.field private J8:Labcd/TJ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0}, Labcd/rE;->DW()I

    move-result v0

    sput v0, Labcd/XJ;->we:I

    return-void
.end method

.method public constructor <init>(Labcd/IE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/YJ;-><init>(Labcd/IE;)V

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/XJ;-><init>(Labcd/IE;)V

    return-void
.end method

.method private FH(Labcd/TJ;)Labcd/TJ;
    .registers 10

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-lt v4, v1, :cond_22

    if-eqz v3, :cond_21

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    :goto_d
    if-lt v2, v1, :cond_16

    iget-object p1, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-nez p1, :cond_15

    iput-object v3, p0, Labcd/XJ;->J8:Labcd/TJ;

    :cond_15
    return-object v3

    :cond_16
    aget-object v4, v0, v2

    iget-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v5, p1, :cond_1e

    iput-object v3, v4, Labcd/TJ;->FH:Labcd/TJ;

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_21
    return-object p1

    :cond_22
    aget-object v5, v0, v4

    iget-object v6, v5, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v6, p1, :cond_59

    invoke-virtual {v5}, Labcd/TJ;->DW()Z

    move-result v6

    if-eqz v6, :cond_2f

    goto :goto_59

    :cond_2f
    sget v6, Labcd/XJ;->we:I

    invoke-virtual {v5, p1, v6}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result v6

    if-gez v6, :cond_4e

    iget v6, v5, Labcd/TJ;->Hw:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Labcd/TJ;->Hw:I

    invoke-virtual {v5, v7}, Labcd/TJ;->FH(I)V

    invoke-virtual {v5}, Labcd/TJ;->DW()Z

    move-result v6

    if-eqz v6, :cond_2f

    iget v6, v5, Labcd/TJ;->Hw:I

    :goto_48
    invoke-virtual {v5, v6}, Labcd/TJ;->j6(I)V

    iput v2, v5, Labcd/TJ;->Hw:I

    goto :goto_59

    :cond_4e
    if-nez v6, :cond_54

    iput-object p1, v5, Labcd/TJ;->FH:Labcd/TJ;

    move-object v3, v5

    goto :goto_59

    :cond_54
    iget v6, v5, Labcd/TJ;->Hw:I

    if-eqz v6, :cond_59

    goto :goto_48

    :cond_59
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method private static Hw(Labcd/TJ;)Z
    .registers 2

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    iget p0, p0, Labcd/TJ;->v5:I

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result p0

    return p0
.end method

.method private XL()Labcd/TJ;
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/XJ;->J0:Z

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v1}, Labcd/TJ;->DW()Z

    move-result v4

    if-eqz v4, :cond_1a

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v5, v4

    if-lt v3, v5, :cond_17

    goto :goto_1a

    :cond_17
    aget-object v1, v4, v3

    goto :goto_9

    :cond_1a
    :goto_1a
    invoke-virtual {v1}, Labcd/TJ;->DW()Z

    move-result v4

    if-eqz v4, :cond_21

    return-object v1

    :cond_21
    iput-object v1, v1, Labcd/TJ;->FH:Labcd/TJ;

    const/4 v4, 0x0

    :goto_24
    add-int/2addr v3, v0

    iget-object v5, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v6, v5

    if-lt v3, v6, :cond_37

    if-eqz v4, :cond_36

    iget-boolean v0, p0, Labcd/XJ;->J0:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-nez v0, :cond_36

    iput-object v1, p0, Labcd/XJ;->J8:Labcd/TJ;

    :cond_36
    return-object v1

    :cond_37
    aget-object v5, v5, v3

    invoke-virtual {v5}, Labcd/TJ;->DW()Z

    move-result v6

    if-eqz v6, :cond_40

    goto :goto_24

    :cond_40
    invoke-virtual {v5, v1}, Labcd/TJ;->DW(Labcd/TJ;)I

    move-result v6

    if-gez v6, :cond_65

    iget-boolean v6, p0, Labcd/XJ;->J0:Z

    if-eqz v6, :cond_5f

    invoke-static {v1}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-static {v5}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-nez v6, :cond_5f

    invoke-static {v1, v5}, Labcd/XJ;->j6(Labcd/TJ;Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_5f

    iput-object v1, v5, Labcd/TJ;->FH:Labcd/TJ;

    goto :goto_86

    :cond_5f
    iput-boolean v2, p0, Labcd/XJ;->J0:Z

    iput-object v5, v5, Labcd/TJ;->FH:Labcd/TJ;

    move-object v1, v5

    goto :goto_24

    :cond_65
    if-nez v6, :cond_6a

    iput-object v1, v5, Labcd/TJ;->FH:Labcd/TJ;

    goto :goto_24

    :cond_6a
    iget-boolean v6, p0, Labcd/XJ;->J0:Z

    if-eqz v6, :cond_95

    invoke-static {v5}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-static {v1}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-nez v6, :cond_95

    invoke-static {v5, v1}, Labcd/XJ;->j6(Labcd/TJ;Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_95

    const/4 v4, 0x0

    :goto_81
    if-lt v4, v3, :cond_88

    iput-object v5, v5, Labcd/TJ;->FH:Labcd/TJ;

    move-object v1, v5

    :goto_86
    const/4 v4, 0x1

    goto :goto_24

    :cond_88
    iget-object v6, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v6, v6, v4

    iget-object v7, v6, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v7, v1, :cond_92

    iput-object v5, v6, Labcd/TJ;->FH:Labcd/TJ;

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_95
    iput-boolean v2, p0, Labcd/XJ;->J0:Z

    goto :goto_24
.end method

.method private static j6(Labcd/TJ;Labcd/TJ;)Z
    .registers 3

    sget v0, Labcd/XJ;->we:I

    invoke-virtual {p0, p1, v0}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private v5(Labcd/TJ;)Z
    .registers 10

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-object v4, v0, v3

    iget-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v5, p1, :cond_30

    invoke-virtual {v4}, Labcd/TJ;->FH()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_30

    :cond_15
    const/4 v5, 0x0

    :cond_16
    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v6}, Labcd/TJ;->j6(I)V

    invoke-virtual {v4, p1, v2}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual {v4, v5}, Labcd/TJ;->FH(I)V

    return v6

    :cond_25
    if-ltz v7, :cond_2d

    invoke-virtual {v4}, Labcd/TJ;->FH()Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_2d
    invoke-virtual {v4, v5}, Labcd/TJ;->FH(I)V

    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method


# virtual methods
.method public QX()Z
    .registers 2

    iget-object v0, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method Ws()V
    .registers 7

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v4, v3

    const/4 v5, 0x0

    if-lt v2, v4, :cond_11

    iget-object v1, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-ne v0, v1, :cond_10

    iput-object v5, p0, Labcd/XJ;->J8:Labcd/TJ;

    :cond_10
    return-void

    :cond_11
    aget-object v3, v3, v2

    iget-object v4, v3, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v4, v0, :cond_26

    iget v4, v3, Labcd/TJ;->Hw:I

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Labcd/TJ;->we()V

    goto :goto_24

    :cond_1f
    invoke-virtual {v3, v4}, Labcd/TJ;->j6(I)V

    iput v1, v3, Labcd/TJ;->Hw:I

    :goto_24
    iput-object v5, v3, Labcd/TJ;->FH:Labcd/TJ;

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method tp()Labcd/TJ;
    .registers 7

    :goto_0
    invoke-direct {p0}, Labcd/XJ;->XL()Labcd/TJ;

    move-result-object v0

    iget-boolean v1, p0, Labcd/XJ;->J0:Z

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    invoke-static {v0}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-direct {p0, v0}, Labcd/XJ;->v5(Labcd/TJ;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-lt v3, v2, :cond_1c

    goto :goto_0

    :cond_1c
    aget-object v4, v1, v3

    iget-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v5, v0, :cond_29

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Labcd/TJ;->FH(I)V

    const/4 v5, 0x0

    iput-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2c
    return-object v0

    :cond_2d
    invoke-direct {p0, v0}, Labcd/XJ;->FH(Labcd/TJ;)Labcd/TJ;

    move-result-object v0

    return-object v0
.end method

.method we()V
    .registers 7

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v4, v3

    const/4 v5, 0x0

    if-lt v2, v4, :cond_11

    iget-object v1, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-ne v0, v1, :cond_10

    iput-object v5, p0, Labcd/XJ;->J8:Labcd/TJ;

    :cond_10
    return-void

    :cond_11
    aget-object v3, v3, v2

    iget-object v4, v3, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v4, v0, :cond_27

    iget v4, v3, Labcd/TJ;->Hw:I

    if-nez v4, :cond_20

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Labcd/TJ;->FH(I)V

    goto :goto_25

    :cond_20
    invoke-virtual {v3, v4}, Labcd/TJ;->j6(I)V

    iput v1, v3, Labcd/TJ;->Hw:I

    :goto_25
    iput-object v5, v3, Labcd/TJ;->FH:Labcd/TJ;

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
