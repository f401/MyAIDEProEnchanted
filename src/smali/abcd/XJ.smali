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
    .registers 3

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/XJ;-><init>(Labcd/IE;)V

    return-void
.end method

.method private FH(Labcd/TJ;)Labcd/TJ;
    .registers 9

    const/4 v2, 0x0

    iget-object v4, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_4

    if-eqz v0, :cond_3

    iget-object v3, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_1

    iget-object v1, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-nez v1, :cond_0

    iput-object v0, p0, Labcd/XJ;->J8:Labcd/TJ;

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    aget-object v2, v3, v1

    iget-object v5, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v5, p1, :cond_2

    iput-object v0, v2, Labcd/TJ;->FH:Labcd/TJ;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :cond_4
    aget-object v1, v4, v3

    iget-object v6, v1, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v6, p1, :cond_5

    invoke-virtual {v1}, Labcd/TJ;->DW()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_6
    sget v6, Labcd/XJ;->we:I

    invoke-virtual {v1, p1, v6}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result v6

    if-gez v6, :cond_7

    iget v6, v1, Labcd/TJ;->Hw:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Labcd/TJ;->Hw:I

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Labcd/TJ;->FH(I)V

    invoke-virtual {v1}, Labcd/TJ;->DW()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v1, Labcd/TJ;->Hw:I

    invoke-virtual {v1, v6}, Labcd/TJ;->j6(I)V

    iput v2, v1, Labcd/TJ;->Hw:I

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    iput-object p1, v1, Labcd/TJ;->FH:Labcd/TJ;

    move-object v0, v1

    goto :goto_3

    :cond_8
    iget v6, v1, Labcd/TJ;->Hw:I

    if-eqz v6, :cond_5

    invoke-virtual {v1, v6}, Labcd/TJ;->j6(I)V

    iput v2, v1, Labcd/TJ;->Hw:I

    goto :goto_3
.end method

.method private static Hw(Labcd/TJ;)Z
    .registers 3

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    iget v1, p0, Labcd/TJ;->v5:I

    invoke-virtual {v0, v1}, Labcd/rE;->j6(I)Z

    move-result v0

    return v0
.end method

.method private XL()Labcd/TJ;
    .registers 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    iput-boolean v5, p0, Labcd/XJ;->J0:Z

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v0, v0, v2

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Labcd/TJ;->DW()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v4, v3

    if-lt v1, v4, :cond_2

    :cond_0
    invoke-virtual {v0}, Labcd/TJ;->DW()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    aget-object v0, v3, v1

    goto :goto_0

    :cond_3
    iput-object v0, v0, Labcd/TJ;->FH:Labcd/TJ;

    move v3, v1

    move v4, v2

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v6, v1

    if-lt v3, v6, :cond_5

    if-eqz v4, :cond_1

    iget-boolean v1, p0, Labcd/XJ;->J0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-nez v1, :cond_1

    iput-object v0, p0, Labcd/XJ;->J8:Labcd/TJ;

    goto :goto_1

    :cond_5
    aget-object v1, v1, v3

    invoke-virtual {v1}, Labcd/TJ;->DW()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1, v0}, Labcd/TJ;->DW(Labcd/TJ;)I

    move-result v6

    if-gez v6, :cond_7

    iget-boolean v6, p0, Labcd/XJ;->J0:Z

    if-eqz v6, :cond_6

    invoke-static {v0}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v1}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v0, v1}, Labcd/XJ;->j6(Labcd/TJ;Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v0, v1, Labcd/TJ;->FH:Labcd/TJ;

    :goto_3
    move v4, v5

    goto :goto_2

    :cond_6
    iput-boolean v2, p0, Labcd/XJ;->J0:Z

    iput-object v1, v1, Labcd/TJ;->FH:Labcd/TJ;

    move-object v0, v1

    goto :goto_2

    :cond_7
    if-nez v6, :cond_8

    iput-object v0, v1, Labcd/TJ;->FH:Labcd/TJ;

    goto :goto_2

    :cond_8
    iget-boolean v6, p0, Labcd/XJ;->J0:Z

    if-eqz v6, :cond_b

    invoke-static {v1}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v0}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v1, v0}, Labcd/XJ;->j6(Labcd/TJ;Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v2

    :goto_4
    if-lt v4, v3, :cond_9

    iput-object v1, v1, Labcd/TJ;->FH:Labcd/TJ;

    move-object v0, v1

    goto :goto_3

    :cond_9
    iget-object v6, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v6, v6, v4

    iget-object v7, v6, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v7, v0, :cond_a

    iput-object v1, v6, Labcd/TJ;->FH:Labcd/TJ;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iput-boolean v2, p0, Labcd/XJ;->J0:Z

    goto :goto_2
.end method

.method private static j6(Labcd/TJ;Labcd/TJ;)Z
    .registers 3

    sget v0, Labcd/XJ;->we:I

    invoke-virtual {p0, p1, v0}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v5(Labcd/TJ;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v5, v4

    move v3, v1

    :goto_0
    if-lt v3, v5, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-object v6, v4, v3

    iget-object v0, v6, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v0, p1, :cond_1

    invoke-virtual {v6}, Labcd/TJ;->FH()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v2}, Labcd/TJ;->j6(I)V

    invoke-virtual {v6, p1, v1}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, v0}, Labcd/TJ;->FH(I)V

    move v1, v2

    goto :goto_1

    :cond_4
    if-ltz v7, :cond_5

    invoke-virtual {v6}, Labcd/TJ;->FH()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_5
    invoke-virtual {v6, v0}, Labcd/TJ;->FH(I)V

    goto :goto_2
.end method


# virtual methods
.method public QX()Z
    .registers 2

    iget-object v0, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Ws()V
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    move v0, v1

    :goto_0
    iget-object v3, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v4, v3

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-ne v2, v0, :cond_0

    iput-object v5, p0, Labcd/XJ;->J8:Labcd/TJ;

    :cond_0
    return-void

    :cond_1
    aget-object v3, v3, v0

    iget-object v4, v3, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v4, v2, :cond_2

    iget v4, v3, Labcd/TJ;->Hw:I

    if-nez v4, :cond_3

    invoke-virtual {v3}, Labcd/TJ;->we()V

    :goto_1
    iput-object v5, v3, Labcd/TJ;->FH:Labcd/TJ;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Labcd/TJ;->j6(I)V

    iput v1, v3, Labcd/TJ;->Hw:I

    goto :goto_1
.end method

.method tp()Labcd/TJ;
    .registers 7

    :cond_0
    invoke-direct {p0}, Labcd/XJ;->XL()Labcd/TJ;

    move-result-object v0

    iget-boolean v1, p0, Labcd/XJ;->J0:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v0}, Labcd/XJ;->Hw(Labcd/TJ;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Labcd/XJ;->v5(Labcd/TJ;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v5, v0, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Labcd/TJ;->FH(I)V

    const/4 v5, 0x0

    iput-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Labcd/XJ;->FH(Labcd/TJ;)Labcd/TJ;

    move-result-object v0

    goto :goto_0
.end method

.method we()V
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    move v0, v1

    :goto_0
    iget-object v3, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v4, v3

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Labcd/XJ;->J8:Labcd/TJ;

    if-ne v2, v0, :cond_0

    iput-object v5, p0, Labcd/XJ;->J8:Labcd/TJ;

    :cond_0
    return-void

    :cond_1
    aget-object v3, v3, v0

    iget-object v4, v3, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v4, v2, :cond_2

    iget v4, v3, Labcd/TJ;->Hw:I

    if-nez v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Labcd/TJ;->FH(I)V

    :goto_1
    iput-object v5, v3, Labcd/TJ;->FH:Labcd/TJ;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Labcd/TJ;->j6(I)V

    iput v1, v3, Labcd/TJ;->Hw:I

    goto :goto_1
.end method
