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

    sget-object p1, Labcd/jK;->j6:Labcd/jK;

    iput-object p1, p0, Labcd/YJ;->Hw:Labcd/jK;

    sget-object p1, Labcd/YJ;->j6:[Labcd/TJ;

    iput-object p1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-virtual {p1}, Labcd/UE;->j3()Labcd/IE;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/YJ;-><init>(Labcd/IE;)V

    return-void
.end method

.method static DW(Labcd/TJ;)Ljava/lang/String;
    .registers 4

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    iget-object v1, p0, Labcd/TJ;->Zo:[B

    const/4 v2, 0x0

    iget p0, p0, Labcd/TJ;->gn:I

    invoke-static {v0, v1, v2, p0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    iget v0, p0, Labcd/YJ;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/YJ;->gn:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v1, v3, :cond_27

    array-length v3, v2

    const/4 v1, 0x0

    :goto_f
    if-lt v0, v3, :cond_14

    iput-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    return-void

    :cond_14
    aget-object v4, v2, v0

    iget-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v5, v4, :cond_1b

    goto :goto_24

    :cond_1b
    if-eqz v1, :cond_23

    invoke-virtual {v4, v1}, Labcd/TJ;->DW(Labcd/TJ;)I

    move-result v5

    if-gez v5, :cond_24

    :cond_23
    move-object v1, v4

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_27
    aget-object v3, v2, v1

    iget-object v3, v3, Labcd/TJ;->DW:Labcd/TJ;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static varargs j6(Labcd/IE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;
    .registers 4

    new-instance v0, Labcd/YJ;

    invoke-direct {v0, p0}, Labcd/YJ;-><init>(Labcd/IE;)V

    invoke-static {p1}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object p0

    invoke-virtual {v0, p0}, Labcd/YJ;->j6(Labcd/jK;)V

    invoke-virtual {v0, p2}, Labcd/YJ;->j6([Labcd/YD;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(Z)V

    :cond_13
    :goto_13
    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    invoke-virtual {p0, v0}, Labcd/fK;->DW(Labcd/YJ;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-object v0

    :cond_22
    invoke-virtual {v0}, Labcd/YJ;->u7()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto :goto_13
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;Labcd/mG;)Labcd/YJ;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Labcd/yE;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Labcd/YJ;->j6(Labcd/UE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j6(Labcd/UE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;
    .registers 3

    invoke-virtual {p0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object p0

    :try_start_4
    invoke-static {p0, p1, p2}, Labcd/YJ;->j6(Labcd/IE;Ljava/lang/String;[Labcd/YD;)Labcd/YJ;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-virtual {p0}, Labcd/IE;->FH()V

    return-object p1

    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Labcd/IE;->FH()V

    throw p1
.end method

.method static j6([BII)Ljava/lang/String;
    .registers 4

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, p0, p1, p2}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/jK;
    .registers 2

    iget-object v0, p0, Labcd/YJ;->Hw:Labcd/jK;

    return-object v0
.end method

.method public DW(I)Labcd/yE;
    .registers 4

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object p1, v0, p1

    iget-object v0, p1, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public DW(Labcd/YD;)V
    .registers 6

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    aget-object v0, v0, v2

    :goto_9
    iget-object v1, v0, Labcd/TJ;->DW:Labcd/TJ;

    if-nez v1, :cond_2c

    instance-of v1, v0, Labcd/UJ;

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    iput-object v1, v0, Labcd/TJ;->FH:Labcd/TJ;

    iput v2, v0, Labcd/TJ;->Hw:I

    move-object v1, v0

    check-cast v1, Labcd/UJ;

    iget-object v3, p0, Labcd/YJ;->DW:Labcd/IE;

    invoke-virtual {v1, v3, p1}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    iget-object p1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aput-object v0, p1, v2

    goto :goto_38

    :cond_23
    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    invoke-direct {p0, p1}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_38

    :cond_2c
    move-object v0, v1

    goto :goto_9

    :cond_2e
    new-array v0, v3, [Labcd/TJ;

    invoke-direct {p0, p1}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object p1

    aput-object p1, v0, v2

    iput-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    :goto_38
    iput-boolean v2, p0, Labcd/YJ;->u7:Z

    iput v2, p0, Labcd/YJ;->gn:I

    return-void
.end method

.method public EQ()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Labcd/YJ;->u7:Z

    if-eqz v1, :cond_c

    iput-boolean v0, p0, Labcd/YJ;->u7:Z

    iput-boolean v0, p0, Labcd/YJ;->tp:Z

    :cond_9
    invoke-virtual {p0}, Labcd/YJ;->we()V

    :cond_c
    :goto_c
    invoke-virtual {p0}, Labcd/YJ;->tp()Labcd/TJ;

    move-result-object v1

    invoke-virtual {v1}, Labcd/TJ;->DW()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    iget v1, p0, Labcd/YJ;->gn:I

    if-lez v1, :cond_27

    invoke-direct {p0}, Labcd/YJ;->QX()V

    iget-boolean v1, p0, Labcd/YJ;->VH:Z

    if-eqz v1, :cond_9

    iput-boolean v3, p0, Labcd/YJ;->u7:Z

    iput-boolean v3, p0, Labcd/YJ;->tp:Z

    return v3

    :cond_27
    return v0

    :cond_28
    iput-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v2, p0, Labcd/YJ;->Hw:Labcd/jK;

    invoke-virtual {v2, p0}, Labcd/jK;->j6(Labcd/YJ;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Labcd/YJ;->Ws()V

    goto :goto_c

    :cond_36
    iget-boolean v2, p0, Labcd/YJ;->Zo:Z

    if-eqz v2, :cond_48

    sget-object v2, Labcd/rE;->j6:Labcd/rE;

    iget v1, v1, Labcd/TJ;->v5:I

    invoke-virtual {v2, v1}, Labcd/rE;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Labcd/YJ;->j6()V

    goto :goto_c

    :cond_48
    iput-boolean v3, p0, Labcd/YJ;->u7:Z
    :try_end_4a
    .catch Labcd/sD; {:try_start_1 .. :try_end_4a} :catch_4b

    return v3

    :catch_4b
    move-exception v1

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_50
    if-lt v3, v2, :cond_53

    return v0

    :cond_53
    aget-object v4, v1, v3

    invoke-virtual {v4}, Labcd/TJ;->J0()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_50
.end method

.method public FH()I
    .registers 2

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget v0, v0, Labcd/TJ;->gn:I

    return v0
.end method

.method public FH(I)I
    .registers 4

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object p1, v0, p1

    iget-object v0, p1, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne v0, v1, :cond_d

    iget p1, p1, Labcd/TJ;->v5:I

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
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
    .registers 2

    sget-object v0, Labcd/YJ;->j6:[Labcd/TJ;

    iput-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/YJ;->u7:Z

    iput v0, p0, Labcd/YJ;->gn:I

    return-void
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/YJ;->VH:Z

    return v0
.end method

.method Ws()V
    .registers 5

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v1, v3, :cond_9

    return-void

    :cond_9
    aget-object v2, v2, v1

    iget-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v3, v0, :cond_15

    invoke-virtual {v2}, Labcd/TJ;->we()V

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
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

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Labcd/TJ;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    const/4 v0, 0x0

    iput-object v0, p1, Labcd/TJ;->FH:Labcd/TJ;

    iput v3, p1, Labcd/TJ;->Hw:I

    iput-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    return v1
.end method

.method public j6(Labcd/YD;)I
    .registers 2

    invoke-direct {p0, p1}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/YJ;->j6(Labcd/TJ;)I

    move-result p1

    return p1
.end method

.method public j6([BI)I
    .registers 9

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v1, v0, Labcd/TJ;->Zo:[B

    iget v0, v0, Labcd/TJ;->gn:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_1c

    if-lt v3, p2, :cond_d

    goto :goto_1c

    :cond_d
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v5

    if-eqz v4, :cond_19

    return v4

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1c
    :goto_1c
    const/4 v4, -0x1

    const/16 v5, 0x2f

    if-ge v3, v0, :cond_28

    aget-byte p1, v1, v3

    if-ne p1, v5, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    :goto_27
    return v2

    :cond_28
    if-ge v3, p2, :cond_30

    aget-byte p1, p1, v3

    if-ne p1, v5, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, -0x1

    :cond_30
    :goto_30
    return v2
.end method

.method public j6(ILjava/lang/Class;)Labcd/TJ;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/TJ;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object p1, p2, p1

    iget-object p2, p1, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne p2, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public j6(I)Labcd/rE;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/YJ;->FH(I)I

    move-result p1

    invoke-static {p1}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object p1

    return-object p1
.end method

.method public j6()V
    .registers 8

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v1

    new-array v1, v1, [Labcd/TJ;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    iget-object v4, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v5, v4

    if-lt v3, v5, :cond_1b

    iget v0, p0, Labcd/YJ;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/YJ;->gn:I

    iput-boolean v2, p0, Labcd/YJ;->u7:Z

    array-length v0, v4

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1b
    aget-object v4, v4, v3

    iget-object v5, v4, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v5, v0, :cond_3a

    invoke-virtual {v4}, Labcd/TJ;->DW()Z

    move-result v5

    if-nez v5, :cond_3a

    sget-object v5, Labcd/rE;->j6:Labcd/rE;

    iget v6, v4, Labcd/TJ;->v5:I

    invoke-virtual {v5, v6}, Labcd/rE;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Labcd/YJ;->DW:Labcd/IE;

    iget-object v6, p0, Labcd/YJ;->FH:Labcd/uE;

    invoke-virtual {v4, v5, v6}, Labcd/TJ;->j6(Labcd/IE;Labcd/uE;)Labcd/TJ;

    move-result-object v4

    goto :goto_3e

    :cond_3a
    invoke-virtual {v4}, Labcd/TJ;->j6()Labcd/VJ;

    move-result-object v4

    :goto_3e
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public j6(Labcd/jK;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    sget-object p1, Labcd/jK;->j6:Labcd/jK;

    :goto_5
    iput-object p1, p0, Labcd/YJ;->Hw:Labcd/jK;

    return-void
.end method

.method public j6(Labcd/uE;I)V
    .registers 5

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object p2, v0, p2

    iget-object v0, p2, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v1, p0, Labcd/YJ;->EQ:Labcd/TJ;

    if-ne v0, v1, :cond_e

    invoke-virtual {p2, p1}, Labcd/TJ;->j6(Labcd/uE;)V

    goto :goto_11

    :cond_e
    invoke-virtual {p1}, Labcd/uE;->Ws()V

    :goto_11
    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/YJ;->Zo:Z

    return-void
.end method

.method public varargs j6([Labcd/YD;)V
    .registers 11

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v1, v0

    array-length v2, p1

    if-ne v2, v1, :cond_7

    goto :goto_9

    :cond_7
    new-array v0, v2, [Labcd/TJ;

    :goto_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-lt v4, v2, :cond_14

    iput-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    iput-boolean v3, p0, Labcd/YJ;->u7:Z

    iput v3, p0, Labcd/YJ;->gn:I

    return-void

    :cond_14
    if-ge v4, v1, :cond_3a

    iget-object v5, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object v5, v5, v4

    :goto_1a
    iget-object v6, v5, Labcd/TJ;->DW:Labcd/TJ;

    if-nez v6, :cond_38

    instance-of v6, v5, Labcd/UJ;

    if-eqz v6, :cond_3a

    iget v6, v5, Labcd/TJ;->VH:I

    if-nez v6, :cond_3a

    const/4 v6, 0x0

    iput-object v6, v5, Labcd/TJ;->FH:Labcd/TJ;

    iput v3, v5, Labcd/TJ;->Hw:I

    move-object v6, v5

    check-cast v6, Labcd/UJ;

    iget-object v7, p0, Labcd/YJ;->DW:Labcd/IE;

    aget-object v8, p1, v4

    invoke-virtual {v6, v7, v8}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    aput-object v5, v0, v4

    goto :goto_42

    :cond_38
    move-object v5, v6

    goto :goto_1a

    :cond_3a
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Labcd/YJ;->FH(Labcd/YD;)Labcd/UJ;

    move-result-object v5

    aput-object v5, v0, v4

    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_b
.end method

.method public j6(II)Z
    .registers 5

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget-object v1, p0, Labcd/YJ;->v5:[Labcd/TJ;

    aget-object p1, v1, p1

    aget-object p2, v1, p2

    iget-object v1, p1, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v1, v0, :cond_12

    iget-object v1, p2, Labcd/TJ;->FH:Labcd/TJ;

    if-eq v1, v0, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    invoke-virtual {p1}, Labcd/TJ;->gn()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Labcd/TJ;->gn()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_2c

    :cond_1f
    iget-object v1, p1, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v1, v0, :cond_2c

    iget-object v1, p2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v1, v0, :cond_2c

    invoke-virtual {p1, p2}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result p1

    return p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return p1
.end method

.method tp()Labcd/TJ;
    .registers 5

    iget-object v0, p0, Labcd/YJ;->v5:[Labcd/TJ;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_5
    invoke-virtual {v0}, Labcd/TJ;->DW()Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v1, v3, :cond_13

    goto :goto_16

    :cond_13
    aget-object v0, v2, v1

    goto :goto_5

    :cond_16
    :goto_16
    invoke-virtual {v0}, Labcd/TJ;->DW()Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v0

    :cond_1d
    iput-object v0, v0, Labcd/TJ;->FH:Labcd/TJ;

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v1, v3, :cond_27

    return-object v0

    :cond_27
    aget-object v2, v2, v1

    invoke-virtual {v2}, Labcd/TJ;->DW()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_1f

    :cond_30
    invoke-virtual {v2, v0}, Labcd/TJ;->DW(Labcd/TJ;)I

    move-result v3

    if-gez v3, :cond_3a

    iput-object v2, v2, Labcd/TJ;->FH:Labcd/TJ;

    move-object v0, v2

    goto :goto_1f

    :cond_3a
    if-nez v3, :cond_1f

    iput-object v0, v2, Labcd/TJ;->FH:Labcd/TJ;

    goto :goto_1f
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

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    iget v1, v0, Labcd/TJ;->gn:I

    new-array v2, v1, [B

    iget-object v0, v0, Labcd/TJ;->Zo:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method we()V
    .registers 5

    iget-object v0, p0, Labcd/YJ;->EQ:Labcd/TJ;

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Labcd/YJ;->v5:[Labcd/TJ;

    array-length v3, v2

    if-lt v1, v3, :cond_9

    return-void

    :cond_9
    aget-object v2, v2, v1

    iget-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v3, v0, :cond_16

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Labcd/TJ;->FH(I)V

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/TJ;->FH:Labcd/TJ;

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
