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
    .registers 6

    const/16 v3, 0x2f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/TJ;->DW:Labcd/TJ;

    iget-object v0, p1, Labcd/TJ;->Zo:[B

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    iget v0, p1, Labcd/TJ;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/TJ;->VH:I

    :try_start_0
    iget-object v0, p0, Labcd/TJ;->Zo:[B

    iget v1, p0, Labcd/TJ;->VH:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2f

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget v0, p1, Labcd/TJ;->gn:I

    invoke-virtual {p0, v0}, Labcd/TJ;->DW(I)V

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    iget v1, p0, Labcd/TJ;->VH:I

    add-int/lit8 v1, v1, -0x1

    aput-byte v3, v0, v1

    goto :goto_0
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
    .registers 6

    const/16 v1, 0x80

    const/16 v3, 0x2f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v0, p1

    iput v0, p0, Labcd/TJ;->gn:I

    iget v0, p0, Labcd/TJ;->gn:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    iget v1, p0, Labcd/TJ;->gn:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    iget v1, p0, Labcd/TJ;->gn:I

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/TJ;->gn:I

    aput-byte v3, v0, v1

    :cond_0
    iget v0, p0, Labcd/TJ;->gn:I

    iput v0, p0, Labcd/TJ;->VH:I

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [B

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    iput v2, p0, Labcd/TJ;->VH:I

    goto :goto_0
.end method

.method private DW(II)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/TJ;->Zo:[B

    new-array v1, p1, [B

    invoke-static {v0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-eqz p0, :cond_0

    iget-object v2, p0, Labcd/TJ;->Zo:[B

    if-eq v2, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object v1, p0, Labcd/TJ;->Zo:[B

    iget-object p0, p0, Labcd/TJ;->DW:Labcd/TJ;

    goto :goto_0
.end method

.method private static Hw(I)I
    .registers 2

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Labcd/TJ;Labcd/TJ;)I
    .registers 5

    :goto_0
    iget-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    iget-object p1, p1, Labcd/TJ;->DW:Labcd/TJ;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v1, v0, Labcd/TJ;->FH:Labcd/TJ;

    iget-object v2, p1, Labcd/TJ;->FH:Labcd/TJ;

    if-ne v1, v2, :cond_2

    iget v0, p0, Labcd/TJ;->VH:I

    goto :goto_1

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method private j6([BIIII)I
    .registers 10

    iget-object v1, p0, Labcd/TJ;->Zo:[B

    iget v2, p0, Labcd/TJ;->gn:I

    :goto_0
    if-ge p5, v2, :cond_0

    if-lt p2, p3, :cond_2

    :cond_0
    if-ge p5, v2, :cond_3

    aget-byte v0, v1, p5

    and-int/lit16 v1, v0, 0xff

    invoke-static {p4}, Labcd/TJ;->Hw(I)I

    move-result v0

    :goto_1
    sub-int v0, v1, v0

    :cond_1
    :goto_2
    return v0

    :cond_2
    aget-byte v0, v1, p5

    and-int/lit16 v0, v0, 0xff

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-ge p2, p3, :cond_4

    iget v0, p0, Labcd/TJ;->v5:I

    invoke-static {v0}, Labcd/TJ;->Hw(I)I

    move-result v0

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Labcd/TJ;->v5:I

    invoke-static {v0}, Labcd/TJ;->Hw(I)I

    move-result v1

    invoke-static {p4}, Labcd/TJ;->Hw(I)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public DW(Labcd/TJ;)I
    .registers 3

    iget v0, p1, Labcd/TJ;->v5:I

    invoke-virtual {p0, p1, v0}, Labcd/TJ;->j6(Labcd/TJ;I)I

    move-result v0

    return v0
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

    if-eqz v0, :cond_0

    return-void

    :cond_0
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

    move-result v2

    iget-object v1, p1, Labcd/TJ;->Zo:[B

    iget v3, p1, Labcd/TJ;->gn:I

    move-object v0, p0

    move v4, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Labcd/TJ;->j6([BIIII)I

    move-result v0

    return v0
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

    move-result v0

    return v0
.end method

.method public abstract j6(Labcd/IE;)Labcd/TJ;
.end method

.method public j6(Labcd/IE;Labcd/uE;)Labcd/TJ;
    .registers 4

    invoke-virtual {p0, p1}, Labcd/TJ;->j6(Labcd/IE;)Labcd/TJ;

    move-result-object v0

    return-object v0
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

    if-lt v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, v0

    :goto_1
    if-ge v0, p1, :cond_1

    if-gtz v0, :cond_2

    :cond_1
    invoke-direct {p0, v0, p2}, Labcd/TJ;->DW(II)V

    goto :goto_0

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1
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
    .registers 6

    invoke-virtual {p0}, Labcd/TJ;->u7()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/TJ;->tp()I

    move-result v1

    invoke-virtual {p1}, Labcd/TJ;->u7()[B

    move-result-object v2

    invoke-virtual {p1}, Labcd/TJ;->tp()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Labcd/yE;->j6([BI[BI)Z

    move-result v0

    return v0
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
