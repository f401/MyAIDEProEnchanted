.class public Labcd/TC;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[Labcd/TC;

.field private static final FH:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
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

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Labcd/TC;->j6:[B

    new-array v0, v0, [Labcd/TC;

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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/TC;->Hw:Labcd/TC;

    new-array p1, p4, [B

    iput-object p1, p0, Labcd/TC;->v5:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p1, Labcd/TC;->DW:[Labcd/TC;

    iput-object p1, p0, Labcd/TC;->gn:[Labcd/TC;

    iput v0, p0, Labcd/TC;->u7:I

    const/4 p1, -0x1

    iput p1, p0, Labcd/TC;->Zo:I

    return-void
.end method

.method constructor <init>([BLabcd/EK;Labcd/TC;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/TC;->Hw:Labcd/TC;

    iget p3, p2, Labcd/EK;->j6:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Labcd/IK;->j6([BIC)I

    move-result p3

    iget v1, p2, Labcd/EK;->j6:I

    sub-int v2, p3, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lez v2, :cond_1c

    new-array v4, v2, [B

    iput-object v4, p0, Labcd/TC;->v5:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    :cond_1c
    sget-object v1, Labcd/TC;->j6:[B

    iput-object v1, p0, Labcd/TC;->v5:[B

    :goto_20
    invoke-static {p1, p3, p2}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result p3

    iput p3, p0, Labcd/TC;->Zo:I

    iget p3, p2, Labcd/EK;->j6:I

    invoke-static {p1, p3, p2}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result p3

    iget v1, p2, Labcd/EK;->j6:I

    const/16 v2, 0xa

    invoke-static {p1, v1, v2}, Labcd/IK;->j6([BIC)I

    move-result v1

    iput v1, p2, Labcd/EK;->j6:I

    iget v1, p0, Labcd/TC;->Zo:I

    if-ltz v1, :cond_48

    iget v1, p2, Labcd/EK;->j6:I

    invoke-static {p1, v1}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v1

    iput-object v1, p0, Labcd/TC;->VH:Labcd/yE;

    iget v1, p2, Labcd/EK;->j6:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p2, Labcd/EK;->j6:I

    :cond_48
    if-lez p3, :cond_7c

    new-array v1, p3, [Labcd/TC;

    iput-object v1, p0, Labcd/TC;->gn:[Labcd/TC;

    const/4 v1, 0x0

    :goto_4f
    if-lt v1, p3, :cond_5b

    if-nez v3, :cond_80

    iget-object p1, p0, Labcd/TC;->gn:[Labcd/TC;

    sget-object p2, Labcd/TC;->FH:Ljava/util/Comparator;

    invoke-static {p1, v0, p3, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_80

    :cond_5b
    iget-object v2, p0, Labcd/TC;->gn:[Labcd/TC;

    new-instance v4, Labcd/TC;

    invoke-direct {v4, p1, p2, p0}, Labcd/TC;-><init>([BLabcd/EK;Labcd/TC;)V

    aput-object v4, v2, v1

    if-eqz v3, :cond_79

    if-lez v1, :cond_79

    sget-object v2, Labcd/TC;->FH:Ljava/util/Comparator;

    iget-object v4, p0, Labcd/TC;->gn:[Labcd/TC;

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v4, v5

    aget-object v4, v4, v1

    invoke-interface {v2, v5, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_79

    const/4 v3, 0x0

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_7c
    sget-object p1, Labcd/TC;->DW:[Labcd/TC;

    iput-object p1, p0, Labcd/TC;->gn:[Labcd/TC;

    :cond_80
    :goto_80
    iput p3, p0, Labcd/TC;->u7:I

    return-void
.end method

.method private DW([Labcd/QC;IILabcd/EE;)I
    .registers 13

    iget v0, p0, Labcd/TC;->Zo:I

    const/4 v1, 0x0

    move v3, p2

    const/4 v2, 0x0

    :goto_5
    add-int v4, v0, p2

    if-lt v3, v4, :cond_a

    return v1

    :cond_a
    aget-object v4, p1, v3

    invoke-virtual {v4}, Labcd/QC;->VH()I

    move-result v5

    if-nez v5, :cond_4c

    iget-object v5, v4, Labcd/QC;->Hw:[B

    iget v6, p0, Labcd/TC;->u7:I

    if-ge v2, v6, :cond_3e

    iget-object v6, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v6, v6, v2

    array-length v7, v5

    invoke-virtual {v6, v5, p3, v7}, Labcd/TC;->j6([BII)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v6}, Labcd/TC;->v5()I

    move-result v4

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, p1, v3, v4, p4}, Labcd/TC;->j6([Labcd/QC;IILabcd/EE;)Labcd/yE;

    sget-object v4, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v6}, Labcd/TC;->v5()I

    move-result v5

    invoke-static {v4, v5}, Labcd/mF;->j6(Labcd/rE;I)I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v6, Labcd/TC;->Zo:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3e
    invoke-virtual {v4}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v4

    array-length v5, v5

    sub-int/2addr v5, p3

    invoke-static {v4, v5}, Labcd/mF;->j6(Labcd/rE;I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4c
    new-instance p1, Labcd/zD;

    invoke-direct {p1, v4}, Labcd/zD;-><init>(Labcd/QC;)V

    goto :goto_53

    :goto_52
    throw p1

    :goto_53
    goto :goto_52
.end method

.method private DW(I)V
    .registers 6

    iget v0, p0, Labcd/TC;->u7:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/TC;->u7:I

    if-ge p1, v0, :cond_11

    iget-object v1, p0, Labcd/TC;->gn:[Labcd/TC;

    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    invoke-static {v1, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    iget-object p1, p0, Labcd/TC;->gn:[Labcd/TC;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    return-void
.end method

.method private static j6([BI)I
    .registers 5

    array-length v0, p0

    :goto_1
    if-lt p1, v0, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    aget-byte v1, p0, p1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_c

    return p1

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private static j6([BILabcd/TC;)I
    .registers 10

    const/4 v0, -0x1

    if-nez p2, :cond_4

    return v0

    :cond_4
    iget-object p2, p2, Labcd/TC;->v5:[B

    array-length v1, p0

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge p1, v1, :cond_20

    if-lt v4, v2, :cond_f

    goto :goto_20

    :cond_f
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v5, v6

    if-eqz v5, :cond_1b

    return v5

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_20
    :goto_20
    if-ne v4, v2, :cond_2a

    aget-byte p0, p0, p1

    const/16 p1, 0x2f

    if-ne p0, p1, :cond_29

    const/4 v0, 0x0

    :cond_29
    return v0

    :cond_2a
    sub-int/2addr v1, v2

    return v1
.end method

.method private j6(ILabcd/TC;)V
    .registers 7

    iget-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    iget v1, p0, Labcd/TC;->u7:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-gt v2, v3, :cond_1a

    if-ge p1, v1, :cond_11

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    aput-object p2, v0, p1

    :goto_13
    iget p1, p0, Labcd/TC;->u7:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/TC;->u7:I

    return-void

    :cond_1a
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Labcd/TC;

    if-lez p1, :cond_25

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_25
    aput-object p2, v2, p1

    if-ge p1, v1, :cond_2f

    add-int/lit8 p2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    iput-object v2, p0, Labcd/TC;->gn:[Labcd/TC;

    goto :goto_13
.end method

.method static j6([B[BI)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    if-ge v0, p2, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-gez p2, :cond_a

    return v0

    :cond_a
    aget-byte v0, p0, p2

    aget-byte v2, p1, p2

    if-eq v0, v2, :cond_5

    return v1
.end method

.method static synthetic j6(Labcd/TC;)[B
    .registers 1

    iget-object p0, p0, Labcd/TC;->v5:[B

    return-object p0
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

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/TC;->u7:I

    return v0
.end method

.method public j6(I)Labcd/TC;
    .registers 3

    iget-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object p1, v0, p1

    return-object p1
.end method

.method j6([Labcd/QC;IILabcd/EE;)Labcd/yE;
    .registers 16

    iget-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    if-nez v0, :cond_56

    iget v0, p0, Labcd/TC;->Zo:I

    new-instance v8, Labcd/mF;

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/TC;->DW([Labcd/QC;IILabcd/EE;)I

    move-result v1

    invoke-direct {v8, v1}, Labcd/mF;-><init>(I)V

    const/4 v1, 0x0

    move v10, p2

    const/4 v9, 0x0

    :goto_12
    add-int v1, v0, p2

    if-lt v10, v1, :cond_1d

    invoke-virtual {p4, v8}, Labcd/EE;->j6(Labcd/mF;)Labcd/yE;

    move-result-object p1

    iput-object p1, p0, Labcd/TC;->VH:Labcd/yE;

    goto :goto_56

    :cond_1d
    aget-object v1, p1, v10

    iget-object v2, v1, Labcd/QC;->Hw:[B

    iget v3, p0, Labcd/TC;->u7:I

    if-ge v9, v3, :cond_3f

    iget-object v3, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v3, v3, v9

    array-length v4, v2

    invoke-virtual {v3, v2, p3, v4}, Labcd/TC;->j6([BII)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v1, v3, Labcd/TC;->v5:[B

    sget-object v2, Labcd/rE;->j6:Labcd/rE;

    iget-object v4, v3, Labcd/TC;->VH:Labcd/yE;

    invoke-virtual {v8, v1, v2, v4}, Labcd/mF;->j6([BLabcd/rE;Labcd/YD;)V

    iget v1, v3, Labcd/TC;->Zo:I

    add-int/2addr v10, v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_3f
    array-length v3, v2

    sub-int v4, v3, p3

    invoke-virtual {v1}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v5

    invoke-virtual {v1}, Labcd/QC;->gn()[B

    move-result-object v6

    invoke-virtual {v1}, Labcd/QC;->u7()I

    move-result v7

    move-object v1, v8

    move v3, p3

    invoke-virtual/range {v1 .. v7}, Labcd/mF;->j6([BIILabcd/rE;[BI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_56
    :goto_56
    iget-object p1, p0, Labcd/TC;->VH:Labcd/yE;

    return-object p1
.end method

.method j6([BLjava/io/OutputStream;)V
    .registers 6

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xa

    aput-byte v1, p1, v0

    iget v1, p0, Labcd/TC;->u7:I

    invoke-static {p1, v0, v1}, Labcd/IK;->FH([BII)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    aput-byte v1, p1, v0

    invoke-virtual {p0}, Labcd/TC;->Hw()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Labcd/TC;->Zo:I

    goto :goto_1d

    :cond_1c
    const/4 v1, -0x1

    :goto_1d
    invoke-static {p1, v0, v1}, Labcd/IK;->FH([BII)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    iget-object v2, p0, Labcd/TC;->v5:[B

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0}, Labcd/TC;->Hw()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Labcd/TC;->VH:Labcd/yE;

    invoke-virtual {v0, p1, v1}, Labcd/YD;->DW([BI)V

    const/16 v0, 0x14

    invoke-virtual {p2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_40
    :goto_40
    iget v0, p0, Labcd/TC;->u7:I

    if-lt v1, v0, :cond_45

    return-void

    :cond_45
    iget-object v0, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Labcd/TC;->j6([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method

.method j6([Labcd/QC;III)V
    .registers 10

    iget v0, p0, Labcd/TC;->Zo:I

    if-ltz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Labcd/TC;->Zo:I

    if-nez p2, :cond_b

    return-void

    :cond_b
    aget-object v1, p1, p3

    iget-object v1, v1, Labcd/QC;->Hw:[B

    :goto_f
    if-lt p3, p2, :cond_12

    goto :goto_1e

    :cond_12
    aget-object v2, p1, p3

    iget-object v2, v2, Labcd/QC;->Hw:[B

    if-lez p4, :cond_29

    invoke-static {v1, v2, p4}, Labcd/TC;->j6([B[BI)Z

    move-result v3

    if-nez v3, :cond_29

    :goto_1e
    iget p1, p0, Labcd/TC;->u7:I

    if-lt v0, p1, :cond_23

    return-void

    :cond_23
    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Labcd/TC;->DW(I)V

    goto :goto_1e

    :cond_29
    iget v3, p0, Labcd/TC;->u7:I

    if-ge v0, v3, :cond_32

    iget-object v3, p0, Labcd/TC;->gn:[Labcd/TC;

    aget-object v3, v3, v0

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    invoke-static {v2, p4, v3}, Labcd/TC;->j6([BILabcd/TC;)I

    move-result v4

    if-lez v4, :cond_3d

    invoke-direct {p0, v0}, Labcd/TC;->DW(I)V

    goto :goto_f

    :cond_3d
    if-gez v4, :cond_58

    invoke-static {v2, p4}, Labcd/TC;->j6([BI)I

    move-result v3

    if-gez v3, :cond_4e

    add-int/lit8 p3, p3, 0x1

    iget v2, p0, Labcd/TC;->Zo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/TC;->Zo:I

    goto :goto_f

    :cond_4e
    new-instance v4, Labcd/TC;

    sub-int/2addr v3, p4

    invoke-direct {v4, p0, v2, p4, v3}, Labcd/TC;-><init>(Labcd/TC;[BII)V

    invoke-direct {p0, v0, v4}, Labcd/TC;->j6(ILabcd/TC;)V

    move-object v3, v4

    :cond_58
    invoke-virtual {v3}, Labcd/TC;->v5()I

    move-result v2

    add-int/2addr v2, p4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p1, p2, p3, v2}, Labcd/TC;->j6([Labcd/QC;III)V

    iget v2, v3, Labcd/TC;->Zo:I

    add-int/2addr p3, v2

    iget v3, p0, Labcd/TC;->Zo:I

    add-int/2addr v3, v2

    iput v3, p0, Labcd/TC;->Zo:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method final j6([BII)Z
    .registers 10

    iget-object v0, p0, Labcd/TC;->v5:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_16

    if-lt p2, p3, :cond_a

    goto :goto_16

    :cond_a
    aget-byte v4, v0, v3

    aget-byte v5, p1, p2

    if-eq v4, v5, :cond_11

    return v2

    :cond_11
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_16
    :goto_16
    if-ne p2, p3, :cond_19

    return v2

    :cond_19
    aget-byte p1, p1, p2

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    return v2
.end method

.method final v5()I
    .registers 2

    iget-object v0, p0, Labcd/TC;->v5:[B

    array-length v0, v0

    return v0
.end method
