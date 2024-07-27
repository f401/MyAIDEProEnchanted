.class public Labcd/YJ;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[Labcd/TJ;


# instance fields
.field private final DW:Labcd/IE;

.field EQ:Labcd/TJ;

.field private final FH:Labcd/uE;

.field private Hw:Labcd/jK;

.field private VH:Z

.field private Zo:Z

.field private gn:I

.field private tp:Z

.field private u7:Z

.field v5:[Labcd/TJ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Labcd/TJ;

    sput-object v0, Labcd/YJ;->j6:[Labcd/TJ;

    return-void
.end method

.method public constructor <init>(Labcd/IE;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/YJ;->FH:Labcd/uE;

    iput-object p1, p0, Labcd/YJ;->DW:Labcd/IE;

    sget-object v0, Labcd/jK;->j6:Labcd/jK;

    iput-object v0, p0, Labcd/YJ;->Hw:Labcd/jK;

    sget-object v0, Labcd/YJ;->j6:[Labcd/TJ;

    iput-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/YJ;-><init>(Labcd/IE;)V

    return-void
.end method

.method static DW(Labcd/TJ;)Ljava/lang/String;
    .registers 5

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    iget-object v1, p0, Labcd/TJ;->Zo:[B

    const/4 v2, 0x0

    iget v3, p0, Labcd/TJ;->gn:I

    invoke-static {v0, v1, v2, v3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private FH(Labcd/YD;)Labcd/UJ;
    .registers 4

    new-instance v0, Labcd/UJ;

    invoke-direct {v0}, Labcd/UJ;-><init>()V

    iget-object v1, p0, Labcd/YJ;->DW:Labcd/IE;

    invoke-virtual {v0, v1, p1}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    return-object v0
.end method

.method private QX()V
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Labcd/YJ;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/YJ;->gn:I

    move v0, v1

    :goto_0
    iget-object v3, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v2, v3

    if-lt v0, v2, :cond_4

    const/4 v0, 0x0

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_0

    iput-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    return-void

    :cond_0
    aget-object v1, v3, v2

    iget-object v5, v1, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v5, v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Labcd/TJ;->DW(Labcd/TJ;)I

    move-result v5

    if-gez v5, :cond_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    aget-object v2, v3, v0

    iget-object v2, v2, Labcd/TJ;->DW:Labcd/TJ;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs j6(Labcd/IE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;
    .registers 6

    new-instance v0, Labcd/YJ;

    invoke-direct {v0, p0}, Labcd/YJ;-><init>(Labcd/IE;)V

    invoke-static {p1}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/jK;)V

    invoke-virtual {v0, p2}, Labcd/YJ;->j6([Labcd/YD;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/YJ;->j6(Z)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v1, v0}, Labcd/fK;->DW(Labcd/YJ;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Labcd/YJ;->u7()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto :goto_0
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;Labcd/mG;)Labcd/YJ;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Labcd/yE;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Labcd/YJ;->j6(Labcd/UE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;

    move-result-object v0

    return-object v0
.end method

.method public static varargs j6(Labcd/UE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;
    .registers 5

    invoke-virtual {p0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2}, Labcd/YJ;->j6(Labcd/IE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Labcd/IE;->FH()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Labcd/IE;->FH()V

    throw v1
.end method

.method static j6([BII)Ljava/lang/String;
    .registers 4

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, p0, p1, p2}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DW()Labcd/jK;
    .registers 2

    iget-object v0, p0, Labcd/YJ;->Hw:Labcd/jK;

    return-object v0
.end method

.method public DW(I)Labcd/yE;
    .registers 5

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v0, v0, p1

    iget-object v1, v0, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    goto :goto_0
.end method

.method public DW(Labcd/YD;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    if-ne v1, v2, :cond_2

    aget-object v1, v0, v3

    :goto_0
    iget-object v0, v1, Labcd/TJ;->DW:Labcd/TJ;

    if-nez v0, :cond_1

    instance-of v0, v1, Labcd/UJ;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v1, Labcd/TJ;->FH:Labcd/TJ;

    iput v3, v1, Labcd/TJ;->Hw:I

    move-object v0, v1

    check-cast v0, Labcd/UJ;

    iget-object v2, p0, Labcd/YJ;->DW:Labcd/IE;

    invoke-virtual {v0, v2, p1}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aput-object v1, v0, v3

    :goto_1
    iput-boolean v3, p0, Labcd/YJ;->u7:Z

    iput v3, p0, Labcd/YJ;->gn:I

    return-void

    :cond_0
    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    invoke-direct {p0, p1}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    new-array v0, v2, [Labcd/TJ;

    invoke-direct {p0, p1}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    goto :goto_1
.end method

.method public EQ()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Labcd/YJ;->u7:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/YJ;->u7:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/YJ;->tp:Z

    invoke-virtual {p0}, Labcd/YJ;->we()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Labcd/YJ;->tp()Labcd/TJ;

    move-result-object v2

    invoke-virtual {v2}, Labcd/TJ;->DW()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v2, p0, Labcd/YJ;->gn:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Labcd/YJ;->QX()V

    iget-boolean v2, p0, Labcd/YJ;->VH:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/YJ;->u7:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/YJ;->tp:Z

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/YJ;->we()V
    :try_end_0
    .catch Labcd/sD; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_6

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    iput-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v3, p0, Labcd/YJ;->Hw:Labcd/jK;

    invoke-virtual {v3, p0}, Labcd/jK;->j6(Labcd/YJ;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Labcd/YJ;->Ws()V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Labcd/YJ;->Zo:Z

    if-eqz v3, :cond_5

    sget-object v3, Labcd/rE;->j6:Labcd/rE;

    iget v2, v2, Labcd/TJ;->v5:I

    invoke-virtual {v3, v2}, Labcd/rE;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Labcd/YJ;->j6()V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/YJ;->u7:Z
    :try_end_1
    .catch Labcd/sD; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    aget-object v4, v2, v0

    invoke-virtual {v4}, Labcd/TJ;->J0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public FH()I
    .registers 2

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget v0, v0, Labcd/TJ;->gn:I

    return v0
.end method

.method public FH(I)I
    .registers 5

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v0, v0, p1

    iget-object v1, v0, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne v1, v2, :cond_0

    iget v0, v0, Labcd/TJ;->v5:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    invoke-static {v0}, Labcd/YJ;->DW(Labcd/TJ;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J0()V
    .registers 2

    iget-object v0, p0, Labcd/YJ;->DW:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    return-void
.end method

.method public J8()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Labcd/YJ;->j6:[Labcd/TJ;

    iput-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    iput-boolean v1, p0, Labcd/YJ;->u7:Z

    iput v1, p0, Labcd/YJ;->gn:I

    return-void
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/YJ;->VH:Z

    return v0
.end method

.method Ws()V
    .registers 5

    iget-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v2, v2, v0

    iget-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v3, v1, :cond_1

    invoke-virtual {v2}, Labcd/TJ;->we()V

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Zo()I
    .registers 2

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v0, v0

    return v0
.end method

.method public gn()Z
    .registers 2

    iget-boolean v0, p0, Labcd/YJ;->Zo:Z

    return v0
.end method

.method public j6(Labcd/TJ;)I
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Labcd/TJ;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    const/4 v0, 0x0

    iput-object v0, p1, Labcd/TJ;->FH:Labcd/TJ;

    iput v3, p1, Labcd/TJ;->Hw:I

    iput-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    return v1
.end method

.method public j6(Labcd/YD;)I
    .registers 3

    invoke-direct {p0, p1}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    move-result v0

    return v0
.end method

.method public j6([BI)I
    .registers 11

    const/16 v7, 0x2f

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v4, v2, Labcd/TJ;->Zo:[B

    iget v5, v2, Labcd/TJ;->gn:I

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_0

    if-lt v3, p2, :cond_2

    :cond_0
    if-ge v3, v5, :cond_5

    aget-byte v2, v4, v3

    if-ne v2, v7, :cond_4

    :cond_1
    :goto_1
    return v0

    :cond_2
    aget-byte v2, v4, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v2, v6

    if-eqz v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    if-ge v3, p2, :cond_1

    aget-byte v2, p1, v3

    if-eq v2, v7, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public j6(ILjava/lang/Class;)Labcd/TJ;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/TJ;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v0, v0, p1

    iget-object v1, v0, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(I)Labcd/rE;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/YJ;->FH(I)I

    move-result v0

    invoke-static {v0}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v0

    return-object v0
.end method

.method public j6()V
    .registers 8

    const/4 v1, 0x0

    iget-object v3, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v0, v0

    new-array v4, v0, [Labcd/TJ;

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v5, v2

    if-lt v0, v5, :cond_0

    iget v0, p0, Labcd/YJ;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/YJ;->gn:I

    iput-boolean v1, p0, Labcd/YJ;->u7:Z

    array-length v0, v2

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    aget-object v2, v2, v0

    iget-object v5, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v5, v3, :cond_1

    invoke-virtual {v2}, Labcd/TJ;->DW()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Labcd/rE;->j6:Labcd/rE;

    iget v6, v2, Labcd/TJ;->v5:I

    invoke-virtual {v5, v6}, Labcd/rE;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Labcd/YJ;->DW:Labcd/IE;

    iget-object v6, p0, Labcd/YJ;->FH:Labcd/uE;

    invoke-virtual {v2, v5, v6}, Labcd/TJ;->j6(Labcd/IE;Labcd/uE;)Labcd/TJ;

    move-result-object v2

    :goto_1
    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Labcd/TJ;->j6()Labcd/VJ;

    move-result-object v2

    goto :goto_1
.end method

.method public j6(Labcd/jK;)V
    .registers 2

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Labcd/YJ;->Hw:Labcd/jK;

    return-void

    :cond_0
    sget-object p1, Labcd/jK;->j6:Labcd/jK;

    goto :goto_0
.end method

.method public j6(Labcd/uE;I)V
    .registers 6

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v0, v0, p2

    iget-object v1, v0, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v2, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1}, Labcd/TJ;->j6(Labcd/uE;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Labcd/uE;->Ws()V

    goto :goto_0
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/YJ;->Zo:Z

    return-void
.end method

.method public varargs j6([Labcd/YD;)V
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v5, v0

    array-length v6, p1

    if-ne v6, v5, :cond_0

    move-object v2, v0

    :goto_0
    move v3, v4

    :goto_1
    if-lt v3, v6, :cond_1

    iput-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    iput-boolean v4, p0, Labcd/YJ;->u7:Z

    iput v4, p0, Labcd/YJ;->gn:I

    return-void

    :cond_0
    new-array v0, v6, [Labcd/TJ;

    move-object v2, v0

    goto :goto_0

    :cond_1
    if-ge v3, v5, :cond_3

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v1, v0, v3

    :goto_2
    iget-object v0, v1, Labcd/TJ;->DW:Labcd/TJ;

    if-nez v0, :cond_2

    instance-of v0, v1, Labcd/UJ;

    if-eqz v0, :cond_3

    iget v0, v1, Labcd/TJ;->VH:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v1, Labcd/TJ;->FH:Labcd/TJ;

    iput v4, v1, Labcd/TJ;->Hw:I

    move-object v0, v1

    check-cast v0, Labcd/UJ;

    iget-object v7, p0, Labcd/YJ;->DW:Labcd/IE;

    aget-object v8, p1, v3

    invoke-virtual {v0, v7, v8}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    aput-object v1, v2, v3

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    aget-object v0, p1, v3

    invoke-direct {p0, v0}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object v0

    aput-object v0, v2, v3

    goto :goto_3
.end method

.method public j6(II)Z
    .registers 7

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v2, v1, p1

    aget-object v1, v1, p2

    iget-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v3, v0, :cond_0

    iget-object v3, v1, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Labcd/TJ;->gn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Labcd/TJ;->gn()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v3, v0, :cond_1

    invoke-virtual {v2, v1}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v0

    goto :goto_0
.end method

.method tp()Labcd/TJ;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {v0}, Labcd/TJ;->DW()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v1, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Labcd/TJ;->DW()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    return-object v0

    :cond_2
    aget-object v0, v2, v1

    goto :goto_0

    :cond_3
    iput-object v0, v0, Labcd/TJ;->FH:Labcd/TJ;

    move v2, v1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Labcd/TJ;->DW()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v0}, Labcd/TJ;->DW(Labcd/TJ;)I

    move-result v3

    if-gez v3, :cond_5

    iput-object v1, v1, Labcd/TJ;->FH:Labcd/TJ;

    move-object v0, v1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_4

    iput-object v0, v1, Labcd/TJ;->FH:Labcd/TJ;

    goto :goto_1
.end method

.method public u7()Z
    .registers 3

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    iget-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget v1, v1, Labcd/TJ;->v5:I

    invoke-virtual {v0, v1}, Labcd/rE;->j6(I)Z

    move-result v0

    return v0
.end method

.method public v5()[B
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget v1, v0, Labcd/TJ;->gn:I

    new-array v2, v1, [B

    iget-object v0, v0, Labcd/TJ;->Zo:[B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method we()V
    .registers 5

    iget-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v2, v2, v0

    iget-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Labcd/TJ;->FH(I)V

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
