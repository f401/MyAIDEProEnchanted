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
    .registers 4

    const/4 v3, 0x3

    new-instance v0, Labcd/kE;

    const/16 v1, 0x4000

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/kE;-><init>(II)V

    sput-object v0, Labcd/rE;->j6:Labcd/rE;

    new-instance v0, Labcd/lE;

    const v1, 0xa000

    invoke-direct {v0, v1, v3}, Labcd/lE;-><init>(II)V

    sput-object v0, Labcd/rE;->DW:Labcd/rE;

    new-instance v0, Labcd/mE;

    const v1, 0x81a4

    invoke-direct {v0, v1, v3}, Labcd/mE;-><init>(II)V

    sput-object v0, Labcd/rE;->FH:Labcd/rE;

    new-instance v0, Labcd/nE;

    const v1, 0x81ed

    invoke-direct {v0, v1, v3}, Labcd/nE;-><init>(II)V

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
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/rE;->gn:I

    iput p2, p0, Labcd/rE;->u7:I

    if-eqz p1, :cond_2

    const/16 v1, 0xa

    new-array v2, v1, [B

    array-length v1, v2

    :goto_0
    if-nez p1, :cond_1

    array-length v3, v2

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    iput-object v3, p0, Labcd/rE;->VH:[B

    :goto_1
    iget-object v3, p0, Labcd/rE;->VH:[B

    array-length v4, v3

    if-lt v0, v4, :cond_0

    :goto_2
    return-void

    :cond_0
    add-int v4, v1, v0

    aget-byte v4, v2, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p1, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    shr-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x30

    aput-byte v2, v1, v0

    iput-object v1, p0, Labcd/rE;->VH:[B

    goto :goto_2
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

    if-eqz v0, :cond_6

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_5

    const v1, 0x8000

    if-eq v0, v1, :cond_3

    const v1, 0xa000

    if-eq v0, v1, :cond_2

    const v1, 0xe000

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Labcd/qE;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, p0}, Labcd/qE;-><init>(III)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Labcd/rE;->v5:Labcd/rE;

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/rE;->DW:Labcd/rE;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p0, 0x49

    if-eqz v0, :cond_4

    sget-object v0, Labcd/rE;->Hw:Labcd/rE;

    goto :goto_0

    :cond_4
    sget-object v0, Labcd/rE;->FH:Labcd/rE;

    goto :goto_0

    :cond_5
    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    goto :goto_0

    :cond_6
    if-nez p0, :cond_0

    sget-object v0, Labcd/rE;->Zo:Labcd/rE;

    goto :goto_0
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
