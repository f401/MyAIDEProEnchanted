.class public abstract Labcd/zC;
.super Labcd/DC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDC<",
        "Labcd/tC;",
        ">;"
    }
.end annotation


# static fields
.field public static final DW:Labcd/zC;

.field public static final FH:Labcd/zC;

.field public static final Hw:Labcd/zC;

.field public static final j6:Labcd/zC;

.field public static final v5:Labcd/zC;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/uC;

    invoke-direct {v0}, Labcd/uC;-><init>()V

    sput-object v0, Labcd/zC;->j6:Labcd/zC;

    new-instance v0, Labcd/vC;

    invoke-direct {v0}, Labcd/vC;-><init>()V

    sput-object v0, Labcd/zC;->DW:Labcd/zC;

    new-instance v0, Labcd/wC;

    invoke-direct {v0}, Labcd/wC;-><init>()V

    sput-object v0, Labcd/zC;->FH:Labcd/zC;

    new-instance v0, Labcd/xC;

    invoke-direct {v0}, Labcd/xC;-><init>()V

    sput-object v0, Labcd/zC;->Hw:Labcd/zC;

    new-instance v0, Labcd/yC;

    invoke-direct {v0}, Labcd/yC;-><init>()V

    sput-object v0, Labcd/zC;->v5:Labcd/zC;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/DC;-><init>()V

    return-void
.end method

.method private static DW(Labcd/CK;II)I
    .registers 4

    :goto_0
    if-lez p1, :cond_c

    invoke-virtual {p0, p1}, Labcd/CK;->DW(I)I

    move-result v0

    if-le p2, v0, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_c
    :goto_c
    return p1
.end method

.method private static j6(Labcd/CK;II)I
    .registers 5

    invoke-virtual {p0}, Labcd/CK;->DW()I

    move-result v0

    :goto_4
    add-int/lit8 v1, v0, -0x2

    if-ge p1, v1, :cond_14

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Labcd/CK;->DW(I)I

    move-result v1

    if-lt v1, p2, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_14
    :goto_14
    return p1
.end method


# virtual methods
.method public bridge synthetic j6(Labcd/CC;I)I
    .registers 3

    check-cast p1, Labcd/tC;

    invoke-virtual {p0, p1, p2}, Labcd/zC;->j6(Labcd/tC;I)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/tC;I)I
    .registers 5

    iget-object v0, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {v1, p2}, Labcd/CK;->DW(I)I

    move-result p2

    iget-object p1, p1, Labcd/tC;->DW:[B

    invoke-virtual {p0, p1, v0, p2}, Labcd/zC;->j6([BII)I

    move-result p1

    return p1
.end method

.method protected abstract j6([BII)I
.end method

.method public bridge synthetic j6(Labcd/CC;Labcd/CC;Labcd/jC;)Labcd/jC;
    .registers 4

    check-cast p1, Labcd/tC;

    check-cast p2, Labcd/tC;

    invoke-virtual {p0, p1, p2, p3}, Labcd/zC;->j6(Labcd/tC;Labcd/tC;Labcd/jC;)Labcd/jC;

    return-object p3
.end method

.method public j6(Labcd/tC;Labcd/tC;Labcd/jC;)Labcd/jC;
    .registers 13

    iget v0, p3, Labcd/jC;->j6:I

    iget v1, p3, Labcd/jC;->DW:I

    if-eq v0, v1, :cond_c2

    iget v1, p3, Labcd/jC;->FH:I

    iget v2, p3, Labcd/jC;->Hw:I

    if-ne v1, v2, :cond_e

    goto/16 :goto_c2

    :cond_e
    iget-object v1, p1, Labcd/tC;->DW:[B

    iget-object v2, p2, Labcd/tC;->DW:[B

    iget-object v3, p1, Labcd/tC;->FH:Labcd/CK;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Labcd/CK;->DW(I)I

    move-result v0

    iget-object v3, p1, Labcd/tC;->FH:Labcd/CK;

    iget v5, p3, Labcd/jC;->FH:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Labcd/CK;->DW(I)I

    move-result v3

    iget-object v5, p1, Labcd/tC;->FH:Labcd/CK;

    iget v6, p3, Labcd/jC;->DW:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Labcd/CK;->DW(I)I

    move-result v5

    iget-object v6, p2, Labcd/tC;->FH:Labcd/CK;

    iget v7, p3, Labcd/jC;->Hw:I

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Labcd/CK;->DW(I)I

    move-result v6

    if-ltz v0, :cond_bc

    if-ltz v3, :cond_bc

    array-length v7, v1

    if-gt v5, v7, :cond_bc

    array-length v7, v2

    if-gt v6, v7, :cond_bc

    :goto_3f
    if-ge v0, v5, :cond_4f

    if-ge v3, v6, :cond_4f

    aget-byte v7, v1, v0

    aget-byte v8, v2, v3

    if-eq v7, v8, :cond_4a

    goto :goto_4f

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_4f
    :goto_4f
    if-ge v0, v5, :cond_63

    if-ge v3, v6, :cond_63

    add-int/lit8 v7, v5, -0x1

    aget-byte v7, v1, v7

    add-int/lit8 v8, v6, -0x1

    aget-byte v8, v2, v8

    if-eq v7, v8, :cond_5e

    goto :goto_63

    :cond_5e
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_4f

    :cond_63
    :goto_63
    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    iget v2, p3, Labcd/jC;->j6:I

    invoke-static {v1, v2, v0}, Labcd/zC;->j6(Labcd/CK;II)I

    move-result v0

    iput v0, p3, Labcd/jC;->j6:I

    iget-object v0, p2, Labcd/tC;->FH:Labcd/CK;

    iget v1, p3, Labcd/jC;->FH:I

    invoke-static {v0, v1, v3}, Labcd/zC;->j6(Labcd/CK;II)I

    move-result v0

    iput v0, p3, Labcd/jC;->FH:I

    iget-object v0, p1, Labcd/tC;->FH:Labcd/CK;

    iget v1, p3, Labcd/jC;->DW:I

    invoke-static {v0, v1, v5}, Labcd/zC;->DW(Labcd/CK;II)I

    move-result v0

    iput v0, p3, Labcd/jC;->DW:I

    iget-object v0, p1, Labcd/tC;->FH:Labcd/CK;

    iget v1, p3, Labcd/jC;->DW:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    if-ge v5, v0, :cond_8e

    const/4 v0, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    if-eqz v0, :cond_9c

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    iget v2, p3, Labcd/jC;->DW:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v1

    sub-int/2addr v1, v5

    add-int/2addr v6, v1

    :cond_9c
    iget-object v1, p2, Labcd/tC;->FH:Labcd/CK;

    iget v2, p3, Labcd/jC;->Hw:I

    invoke-static {v1, v2, v6}, Labcd/zC;->DW(Labcd/CK;II)I

    move-result v1

    iput v1, p3, Labcd/jC;->Hw:I

    if-nez v0, :cond_b8

    iget-object v0, p2, Labcd/tC;->FH:Labcd/CK;

    iget v1, p3, Labcd/jC;->Hw:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    if-ge v6, v0, :cond_b8

    iget v0, p3, Labcd/jC;->DW:I

    add-int/2addr v0, v4

    iput v0, p3, Labcd/jC;->DW:I

    :cond_b8
    invoke-super {p0, p1, p2, p3}, Labcd/DC;->j6(Labcd/CC;Labcd/CC;Labcd/jC;)Labcd/jC;

    return-object p3

    :cond_bc
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_c2
    :goto_c2
    return-object p3
.end method
