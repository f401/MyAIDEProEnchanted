.class public abstract Labcd/TJ;
.super Ljava/lang/Object;


# static fields
.field protected static final j6:[B


# instance fields
.field final DW:Labcd/TJ;

.field FH:Labcd/TJ;

.field Hw:I

.field protected final VH:I

.field protected Zo:[B

.field protected gn:I

.field protected v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    sput-object v0, Labcd/TJ;->j6:[B

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/TJ;->VH:I

    return-void
.end method

.method protected constructor <init>(Labcd/TJ;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/TJ;->DW:Labcd/TJ;

    iget-object v0, p1, Labcd/TJ;->Zo:[B

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    iget v1, p1, Labcd/TJ;->gn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/TJ;->VH:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2f

    :try_start_13
    aput-byte v2, v0, v1
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_13 .. :try_end_15} :catch_16

    goto :goto_24

    :catch_16
    move-exception v0

    iget p1, p1, Labcd/TJ;->gn:I

    invoke-virtual {p0, p1}, Labcd/TJ;->DW(I)V

    iget-object p1, p0, Labcd/TJ;->Zo:[B

    iget v0, p0, Labcd/TJ;->VH:I

    add-int/lit8 v0, v0, -0x1

    aput-byte v2, p1, v0

    :goto_24
    return-void
.end method

.method protected constructor <init>(Labcd/TJ;[BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/TJ;->DW:Labcd/TJ;

    iput-object p2, p0, Labcd/TJ;->Zo:[B

    iput p3, p0, Labcd/TJ;->VH:I

    return-void
.end method

.method protected constructor <init>([B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-eqz p1, :cond_37

    array-length v2, p1

    if-lez v2, :cond_37

    array-length v2, p1

    iput v2, p0, Labcd/TJ;->gn:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    iget v2, p0, Labcd/TJ;->gn:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/TJ;->Zo:[B

    iget v0, p0, Labcd/TJ;->gn:I

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_32

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Labcd/TJ;->gn:I

    aput-byte v2, p1, v0

    :cond_32
    iget p1, p0, Labcd/TJ;->gn:I

    iput p1, p0, Labcd/TJ;->VH:I

    goto :goto_3d

    :cond_37
    new-array p1, v0, [B

    iput-object p1, p0, Labcd/TJ;->Zo:[B

    iput v1, p0, Labcd/TJ;->VH:I

    :goto_3d
    return-void
.end method

.method private DW(II)V
    .registers 5

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    new-array p1, p1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p0

    :goto_9
    if-eqz p2, :cond_15

    iget-object v1, p2, Labcd/TJ;->Zo:[B

    if-eq v1, v0, :cond_10

    goto :goto_15

    :cond_10
    iput-object p1, p2, Labcd/TJ;->Zo:[B

    iget-object p2, p2, Labcd/TJ;->DW:Labcd/TJ;

    goto :goto_9

    :cond_15
    :goto_15
    return-void
.end method

.method private static Hw(I)I
    .registers 2

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x2f

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static j6(Labcd/TJ;Labcd/TJ;)I
    .registers 5

    :goto_0
    iget-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    iget-object p1, p1, Labcd/TJ;->DW:Labcd/TJ;

    if-eqz v0, :cond_14

    if-nez p1, :cond_9

    goto :goto_14

    :cond_9
    iget-object v1, v0, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v2, p1, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v1, v2, :cond_12

    iget p0, p0, Labcd/TJ;->VH:I

    return p0

    :cond_12
    move-object p0, v0

    goto :goto_0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method private j6([BIIII)I
    .registers 10

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    iget v1, p0, Labcd/TJ;->gn:I

    :goto_4
    if-ge p5, v1, :cond_1a

    if-lt p2, p3, :cond_9

    goto :goto_1a

    :cond_9
    aget-byte v2, v0, p5

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v2

    :cond_15
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_1a
    :goto_1a
    if-ge p5, v1, :cond_25

    aget-byte p1, v0, p5

    and-int/lit16 p1, p1, 0xff

    :goto_20
    invoke-static {p4}, Labcd/TJ;->Hw(I)I

    move-result p2

    goto :goto_3a

    :cond_25
    if-ge p2, p3, :cond_33

    iget p3, p0, Labcd/TJ;->v5:I

    invoke-static {p3}, Labcd/TJ;->Hw(I)I

    move-result p3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p3, p1

    return p3

    :cond_33
    iget p1, p0, Labcd/TJ;->v5:I

    invoke-static {p1}, Labcd/TJ;->Hw(I)I

    move-result p1

    goto :goto_20

    :goto_3a
    sub-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public DW(Labcd/TJ;)I
    .registers 3

    iget v0, p1, Labcd/TJ;->v5:I

    invoke-virtual {p0, p1, v0}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result p1

    return p1
.end method

.method protected DW(I)V
    .registers 3

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Labcd/TJ;->DW(II)V

    return-void
.end method

.method public abstract DW()Z
.end method

.method public EQ()V
    .registers 2

    :goto_0
    invoke-virtual {p0}, Labcd/TJ;->FH()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Labcd/TJ;->j6(I)V

    goto :goto_0
.end method

.method public abstract FH(I)V
.end method

.method public abstract FH()Z
.end method

.method public Hw()Labcd/rE;
    .registers 2

    iget v0, p0, Labcd/TJ;->v5:I

    invoke-static {v0}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v0

    return-object v0
.end method

.method public J0()V
    .registers 1

    return-void
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Labcd/TJ;->v5:I

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Labcd/YJ;->DW(Labcd/TJ;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract gn()Z
.end method

.method j6(Labcd/TJ;I)I
    .registers 9

    invoke-static {p0, p1}, Labcd/TJ;->j6(Labcd/TJ;Labcd/TJ;)I

    move-result v5

    iget-object v1, p1, Labcd/TJ;->Zo:[B

    iget v3, p1, Labcd/TJ;->gn:I

    move-object v0, p0

    move v2, v5

    move v4, p2

    invoke-direct/range {v0 .. v5}, Labcd/TJ;->j6([BIIII)I

    move-result p1

    return p1
.end method

.method public j6([BIII)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/TJ;->j6([BIIII)I

    move-result p1

    return p1
.end method

.method public abstract j6(Labcd/IE;)Labcd/TJ;
.end method

.method public j6(Labcd/IE;Labcd/uE;)Labcd/TJ;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/TJ;->j6(Labcd/IE;)Labcd/TJ;

    move-result-object p1

    return-object p1
.end method

.method public j6()Labcd/VJ;
    .registers 2

    new-instance v0, Labcd/VJ;

    invoke-direct {v0, p0}, Labcd/VJ;-><init>(Labcd/TJ;)V

    return-object v0
.end method

.method public abstract j6(I)V
.end method

.method protected j6(II)V
    .registers 5

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    array-length v1, v0

    if-lt v1, p1, :cond_6

    return-void

    :cond_6
    array-length v0, v0

    :goto_7
    if-ge v0, p1, :cond_f

    if-gtz v0, :cond_c

    goto :goto_f

    :cond_c
    shl-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    :goto_f
    invoke-direct {p0, v0, p2}, Labcd/TJ;->DW(II)V

    return-void
.end method

.method public j6(Labcd/uE;)V
    .registers 4

    invoke-virtual {p0}, Labcd/TJ;->u7()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/TJ;->tp()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Labcd/uE;->Hw([BI)V

    return-void
.end method

.method public j6(Labcd/TJ;)Z
    .registers 5

    invoke-virtual {p0}, Labcd/TJ;->u7()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/TJ;->tp()I

    move-result v1

    invoke-virtual {p1}, Labcd/TJ;->u7()[B

    move-result-object v2

    invoke-virtual {p1}, Labcd/TJ;->tp()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Labcd/yE;->j6([BI[BI)Z

    move-result p1

    return p1
.end method

.method public abstract tp()I
.end method

.method public abstract u7()[B
.end method

.method public v5()Labcd/yE;
    .registers 3

    invoke-virtual {p0}, Labcd/TJ;->u7()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/TJ;->tp()I

    move-result v1

    invoke-static {v0, v1}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public we()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Labcd/TJ;->FH(I)V

    return-void
.end method
