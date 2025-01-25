.class public abstract Labcd/rE;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/rE;

.field public static final FH:Labcd/rE;

.field public static final Hw:Labcd/rE;

.field public static final Zo:Labcd/rE;

.field public static final j6:Labcd/rE;

.field public static final v5:Labcd/rE;


# instance fields
.field private final VH:[B

.field private final gn:I

.field private final u7:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/kE;

    const/16 v1, 0x4000

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/kE;-><init>(II)V

    sput-object v0, Labcd/rE;->j6:Labcd/rE;

    new-instance v0, Labcd/lE;

    const v1, 0xa000

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Labcd/lE;-><init>(II)V

    sput-object v0, Labcd/rE;->DW:Labcd/rE;

    new-instance v0, Labcd/mE;

    const v1, 0x81a4

    invoke-direct {v0, v1, v2}, Labcd/mE;-><init>(II)V

    sput-object v0, Labcd/rE;->FH:Labcd/rE;

    new-instance v0, Labcd/nE;

    const v1, 0x81ed

    invoke-direct {v0, v1, v2}, Labcd/nE;-><init>(II)V

    sput-object v0, Labcd/rE;->Hw:Labcd/rE;

    new-instance v0, Labcd/oE;

    const v1, 0xe000

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/oE;-><init>(II)V

    sput-object v0, Labcd/rE;->v5:Labcd/rE;

    new-instance v0, Labcd/pE;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Labcd/pE;-><init>(II)V

    sput-object v0, Labcd/rE;->Zo:Labcd/rE;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/rE;->gn:I

    iput p2, p0, Labcd/rE;->u7:I

    const/16 p2, 0x30

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    const/16 v1, 0xa

    new-array v2, v1, [B

    :goto_10
    if-nez p1, :cond_27

    rsub-int/lit8 p1, v1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/rE;->VH:[B

    :goto_18
    iget-object p1, p0, Labcd/rE;->VH:[B

    array-length p2, p1

    if-lt v0, p2, :cond_1e

    goto :goto_39

    :cond_1e
    add-int p2, v1, v0

    aget-byte p2, v2, p2

    aput-byte p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p1, 0x7

    add-int/2addr v3, p2

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    shr-int/lit8 p1, p1, 0x3

    goto :goto_10

    :cond_32
    const/4 p1, 0x1

    new-array p1, p1, [B

    aput-byte p2, p1, v0

    iput-object p1, p0, Labcd/rE;->VH:[B

    :goto_39
    return-void
.end method

.method synthetic constructor <init>(IILabcd/rE;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/rE;-><init>(II)V

    return-void
.end method

.method public static final DW(I)Labcd/rE;
    .registers 3

    const v0, 0xf000

    and-int/2addr v0, p0

    if-eqz v0, :cond_2d

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_2a

    const v1, 0x8000

    if-eq v0, v1, :cond_20

    const v1, 0xa000

    if-eq v0, v1, :cond_1d

    const v1, 0xe000

    if-eq v0, v1, :cond_1a

    goto :goto_32

    :cond_1a
    sget-object p0, Labcd/rE;->v5:Labcd/rE;

    return-object p0

    :cond_1d
    sget-object p0, Labcd/rE;->DW:Labcd/rE;

    return-object p0

    :cond_20
    and-int/lit8 p0, p0, 0x49

    if-eqz p0, :cond_27

    sget-object p0, Labcd/rE;->Hw:Labcd/rE;

    return-object p0

    :cond_27
    sget-object p0, Labcd/rE;->FH:Labcd/rE;

    return-object p0

    :cond_2a
    sget-object p0, Labcd/rE;->j6:Labcd/rE;

    return-object p0

    :cond_2d
    if-nez p0, :cond_32

    sget-object p0, Labcd/rE;->Zo:Labcd/rE;

    return-object p0

    :cond_32
    :goto_32
    new-instance v0, Labcd/qE;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, p0}, Labcd/qE;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/rE;->gn:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/rE;->u7:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/rE;->VH:[B

    array-length v0, v0

    return v0
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Labcd/rE;->VH:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public j6([BI)V
    .registers 6

    iget-object v0, p0, Labcd/rE;->VH:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public abstract j6(I)Z
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Labcd/rE;->gn:I

    invoke-static {v0}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
