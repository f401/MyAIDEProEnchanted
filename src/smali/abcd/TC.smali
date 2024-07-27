.class public Labcd/TC;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[Labcd/TC;

.field private static final FH:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Labcd/TC;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:[B


# instance fields
.field private Hw:Labcd/TC;

.field private VH:Labcd/yE;

.field private Zo:I

.field private gn:[Labcd/TC;

.field private u7:I

.field private v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Labcd/TC;->j6:[B

    new-array v0, v1, [Labcd/TC;

    sput-object v0, Labcd/TC;->DW:[Labcd/TC;

    new-instance v0, Labcd/SC;

    invoke-direct {v0}, Labcd/SC;-><init>()V

    sput-object v0, Labcd/TC;->FH:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/TC;->j6:[B

    iput-object v0, p0, Labcd/TC;->v5:[B

    sget-object v0, Labcd/TC;->DW:[Labcd/TC;

    iput-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    const/4 v0, 0x0

    iput v0, p0, Labcd/TC;->u7:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/TC;->Zo:I

    return-void
.end method

.method private constructor <init>(Labcd/TC;[BII)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/TC;->Hw:Labcd/TC;

    new-array v0, p4, [B

    iput-object v0, p0, Labcd/TC;->v5:[B

    iget-object v0, p0, Labcd/TC;->v5:[B

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Labcd/TC;->DW:[Labcd/TC;

    iput-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    iput v1, p0, Labcd/TC;->u7:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/TC;->Zo:I

    return-void
.end method

.method constructor <init>([BLabcd/EK;Labcd/TC;)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/TC;->Hw:Labcd/TC;

    iget v0, p2, Labcd/EK;->j6:I

    invoke-static {p1, v0, v1}, Labcd/IK;->j6([BIC)I

    move-result v2

    iget v3, p2, Labcd/EK;->j6:I

    const/4 v0, 0x1

    sub-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_2

    new-array v5, v4, [B

    iput-object v5, p0, Labcd/TC;->v5:[B

    iget-object v5, p0, Labcd/TC;->v5:[B

    invoke-static {p1, v3, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {p1, v2, p2}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result v2

    iput v2, p0, Labcd/TC;->Zo:I

    iget v2, p2, Labcd/EK;->j6:I

    invoke-static {p1, v2, p2}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result v3

    iget v2, p2, Labcd/EK;->j6:I

    const/16 v4, 0xa

    invoke-static {p1, v2, v4}, Labcd/IK;->j6([BIC)I

    move-result v2

    iput v2, p2, Labcd/EK;->j6:I

    iget v2, p0, Labcd/TC;->Zo:I

    if-ltz v2, :cond_0

    iget v2, p2, Labcd/EK;->j6:I

    invoke-static {p1, v2}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v2

    iput-object v2, p0, Labcd/TC;->VH:Labcd/yE;

    iget v2, p2, Labcd/EK;->j6:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p2, Labcd/EK;->j6:I

    :cond_0
    if-lez v3, :cond_5

    new-array v2, v3, [Labcd/TC;

    iput-object v2, p0, Labcd/TC;->gn:[Labcd/TC;

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_3

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    sget-object v2, Labcd/TC;->FH:Ljava/util/Comparator;

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_1
    :goto_2
    iput v3, p0, Labcd/TC;->u7:I

    return-void

    :cond_2
    sget-object v3, Labcd/TC;->j6:[B

    iput-object v3, p0, Labcd/TC;->v5:[B

    goto :goto_0

    :cond_3
    iget-object v4, p0, Labcd/TC;->gn:[Labcd/TC;

    new-instance v5, Labcd/TC;

    invoke-direct {v5, p1, p2, p0}, Labcd/TC;-><init>([BLabcd/EK;Labcd/TC;)V

    aput-object v5, v4, v2

    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    sget-object v4, Labcd/TC;->FH:Ljava/util/Comparator;

    iget-object v5, p0, Labcd/TC;->gn:[Labcd/TC;

    add-int/lit8 v6, v2, -0x1

    aget-object v6, v5, v6

    aget-object v5, v5, v2

    invoke-interface {v4, v6, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    sget-object v0, Labcd/TC;->DW:[Labcd/TC;

    iput-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    goto :goto_2
.end method

.method private DW([Labcd/QC;IILabcd/EE;)I
    .registers 13

    const/4 v1, 0x0

    iget v4, p0, Labcd/TC;->Zo:I

    move v0, v1

    move v2, v1

    move v3, p2

    :goto_0
    add-int v1, v4, p2

    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v1, p1, v3

    invoke-virtual {v1}, Labcd/QC;->VH()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Labcd/QC;->Hw:[B

    iget v6, p0, Labcd/TC;->u7:I

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v6, v6, v0

    array-length v7, v5

    invoke-virtual {v6, v5, p3, v7}, Labcd/TC;->j6([BII)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Labcd/TC;->v5()I

    move-result v1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, p1, v3, v1, p4}, Labcd/TC;->j6([Labcd/QC;IILabcd/EE;)Labcd/yE;

    sget-object v1, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v6}, Labcd/TC;->v5()I

    move-result v5

    invoke-static {v1, v5}, Labcd/mF;->j6(Labcd/rE;I)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, v6, Labcd/TC;->Zo:I

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v1

    array-length v5, v5

    sub-int/2addr v5, p3

    invoke-static {v1, v5}, Labcd/mF;->j6(Labcd/rE;I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/zD;

    invoke-direct {v0, v1}, Labcd/zD;-><init>(Labcd/QC;)V

    throw v0
.end method

.method private DW(I)V
    .registers 6

    iget v0, p0, Labcd/TC;->u7:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/TC;->u7:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Labcd/TC;->gn:[Labcd/TC;

    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    invoke-static {v1, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Labcd/TC;->gn:[Labcd/TC;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void
.end method

.method private static j6([BI)I
    .registers 6

    array-length v1, p0

    move v0, p1

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static j6([BILabcd/TC;)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v4, p2, Labcd/TC;->v5:[B

    array-length v5, p0

    array-length v6, v4

    move v3, v0

    :goto_1
    if-ge p1, v5, :cond_1

    if-lt v3, v6, :cond_2

    :cond_1
    if-ne v3, v6, :cond_4

    aget-byte v2, p0, p1

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_5

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    aget-byte v7, v4, v3

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v2, v7

    if-eqz v2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_4
    sub-int v1, v5, v6

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private j6(ILabcd/TC;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    iget v1, p0, Labcd/TC;->u7:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-gt v2, v3, :cond_1

    if-ge p1, v1, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    aput-object p2, v0, p1

    iget v0, p0, Labcd/TC;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/TC;->u7:I

    :goto_0
    return-void

    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Labcd/TC;

    if-lez p1, :cond_2

    invoke-static {v0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    aput-object p2, v2, p1

    if-ge p1, v1, :cond_3

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v2, p0, Labcd/TC;->gn:[Labcd/TC;

    iget v0, p0, Labcd/TC;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/TC;->u7:I

    goto :goto_0
.end method

.method static j6([B[BI)Z
    .registers 6

    const/4 v0, 0x0

    array-length v1, p1

    if-ge v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    aget-byte v1, p0, p2

    aget-byte v2, p1, p2

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method static synthetic j6(Labcd/TC;)[B
    .registers 2

    iget-object v0, p0, Labcd/TC;->v5:[B

    return-object v0
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/TC;->Zo:I

    return v0
.end method

.method FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    return-object v0
.end method

.method public Hw()Z
    .registers 2

    iget-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/TC;->u7:I

    return v0
.end method

.method public j6(I)Labcd/TC;
    .registers 3

    iget-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v0, v0, p1

    return-object v0
.end method

.method j6([Labcd/QC;IILabcd/EE;)Labcd/yE;
    .registers 15

    iget-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    if-nez v0, :cond_0

    iget v9, p0, Labcd/TC;->Zo:I

    new-instance v0, Labcd/mF;

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/TC;->DW([Labcd/QC;IILabcd/EE;)I

    move-result v1

    invoke-direct {v0, v1}, Labcd/mF;-><init>(I)V

    const/4 v1, 0x0

    move v7, v1

    move v8, p2

    :goto_0
    add-int v1, v9, p2

    if-lt v8, v1, :cond_1

    invoke-virtual {p4, v0}, Labcd/EE;->j6(Labcd/mF;)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    :cond_0
    iget-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    return-object v0

    :cond_1
    aget-object v2, p1, v8

    iget-object v1, v2, Labcd/QC;->Hw:[B

    iget v3, p0, Labcd/TC;->u7:I

    if-ge v7, v3, :cond_2

    iget-object v3, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v3, v3, v7

    array-length v4, v1

    invoke-virtual {v3, v1, p3, v4}, Labcd/TC;->j6([BII)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, v3, Labcd/TC;->v5:[B

    sget-object v2, Labcd/rE;->j6:Labcd/rE;

    iget-object v4, v3, Labcd/TC;->VH:Labcd/yE;

    invoke-virtual {v0, v1, v2, v4}, Labcd/mF;->j6([BLabcd/rE;Labcd/YD;)V

    iget v1, v3, Labcd/TC;->Zo:I

    add-int v2, v8, v1

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v8, v2

    goto :goto_0

    :cond_2
    array-length v3, v1

    sub-int/2addr v3, p3

    invoke-virtual {v2}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v4

    invoke-virtual {v2}, Labcd/QC;->gn()[B

    move-result-object v5

    invoke-virtual {v2}, Labcd/QC;->u7()I

    move-result v6

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Labcd/mF;->j6([BIILabcd/rE;[BI)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0
.end method

.method j6([BLjava/io/OutputStream;)V
    .registers 6

    const/4 v1, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xa

    aput-byte v2, p1, v0

    iget v2, p0, Labcd/TC;->u7:I

    invoke-static {p1, v0, v2}, Labcd/IK;->FH([BII)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/16 v0, 0x20

    aput-byte v0, p1, v2

    invoke-virtual {p0}, Labcd/TC;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/TC;->Zo:I

    :goto_0
    invoke-static {p1, v2, v0}, Labcd/IK;->FH([BII)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aput-byte v1, p1, v0

    iget-object v2, p0, Labcd/TC;->v5:[B

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0}, Labcd/TC;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    invoke-virtual {v0, p1, v1}, Labcd/YD;->DW([BI)V

    const/16 v0, 0x14

    invoke-virtual {p2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v1

    :goto_1
    iget v1, p0, Labcd/TC;->u7:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Labcd/TC;->j6([BLjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method j6([Labcd/QC;III)V
    .registers 10

    const/4 v0, 0x0

    iget v1, p0, Labcd/TC;->Zo:I

    if-ltz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput v0, p0, Labcd/TC;->Zo:I

    if-eqz p2, :cond_0

    aget-object v1, p1, p3

    iget-object v2, v1, Labcd/QC;->Hw:[B

    move v1, v0

    :goto_0
    if-lt p3, p2, :cond_3

    :cond_2
    :goto_1
    iget v0, p0, Labcd/TC;->u7:I

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Labcd/TC;->DW(I)V

    goto :goto_1

    :cond_3
    aget-object v0, p1, p3

    iget-object v3, v0, Labcd/QC;->Hw:[B

    if-lez p4, :cond_4

    invoke-static {v2, v3, p4}, Labcd/TC;->j6([B[BI)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget v0, p0, Labcd/TC;->u7:I

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v0, v0, v1

    :goto_2
    invoke-static {v3, p4, v0}, Labcd/TC;->j6([BILabcd/TC;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-direct {p0, v1}, Labcd/TC;->DW(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    if-gez v4, :cond_8

    invoke-static {v3, p4}, Labcd/TC;->j6([BI)I

    move-result v4

    if-gez v4, :cond_7

    add-int/lit8 p3, p3, 0x1

    iget v0, p0, Labcd/TC;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/TC;->Zo:I

    goto :goto_0

    :cond_7
    new-instance v0, Labcd/TC;

    sub-int/2addr v4, p4

    invoke-direct {v0, p0, v3, p4, v4}, Labcd/TC;-><init>(Labcd/TC;[BII)V

    invoke-direct {p0, v1, v0}, Labcd/TC;->j6(ILabcd/TC;)V

    :cond_8
    invoke-virtual {v0}, Labcd/TC;->v5()I

    move-result v3

    add-int/2addr v3, p4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, p1, p2, p3, v3}, Labcd/TC;->j6([Labcd/QC;III)V

    iget v0, v0, Labcd/TC;->Zo:I

    add-int/2addr p3, v0

    iget v3, p0, Labcd/TC;->Zo:I

    add-int/2addr v0, v3

    iput v0, p0, Labcd/TC;->Zo:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final j6([BII)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/TC;->v5:[B

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    if-lt p2, p3, :cond_2

    :cond_0
    if-ne p2, p3, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    aget-byte v4, v2, v1

    aget-byte v5, p1, p2

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    aget-byte v1, p1, p2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method final v5()I
    .registers 2

    iget-object v0, p0, Labcd/TC;->v5:[B

    array-length v0, v0

    return v0
.end method
