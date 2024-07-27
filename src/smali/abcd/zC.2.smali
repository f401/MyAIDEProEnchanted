.class public abstract Labcd/zC;
.super Labcd/DC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDC",
        "<",
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
    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Labcd/CK;->DW(I)I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private static j6(Labcd/CK;II)I
    .registers 5

    invoke-virtual {p0}, Labcd/CK;->DW()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x2

    if-ge p1, v1, :cond_0

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Labcd/CK;->DW(I)I

    move-result v1

    if-lt v1, p2, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic j6(Labcd/CC;I)I
    .registers 4

    check-cast p1, Labcd/tC;

    invoke-virtual {p0, p1, p2}, Labcd/zC;->j6(Labcd/tC;I)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/tC;I)I
    .registers 6

    iget-object v0, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v1

    iget-object v2, p1, Labcd/tC;->DW:[B

    invoke-virtual {p0, v2, v0, v1}, Labcd/zC;->j6([BII)I

    move-result v0

    return v0
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
    .registers 12

    iget v0, p3, Labcd/jC;->j6:I

    iget v1, p3, Labcd/jC;->DW:I

    if-eq v0, v1, :cond_0

    iget v1, p3, Labcd/jC;->FH:I

    iget v2, p3, Labcd/jC;->Hw:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    iget-object v5, p1, Labcd/tC;->DW:[B

    iget-object v6, p2, Labcd/tC;->DW:[B

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Labcd/CK;->DW(I)I

    move-result v2

    iget-object v0, p1, Labcd/tC;->FH:Labcd/CK;

    iget v1, p3, Labcd/jC;->FH:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v4

    iget-object v0, p1, Labcd/tC;->FH:Labcd/CK;

    iget v1, p3, Labcd/jC;->DW:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v1

    iget-object v0, p2, Labcd/tC;->FH:Labcd/CK;

    iget v3, p3, Labcd/jC;->Hw:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Labcd/CK;->DW(I)I

    move-result v0

    if-ltz v2, :cond_8

    if-ltz v4, :cond_8

    array-length v3, v5

    if-gt v1, v3, :cond_8

    array-length v3, v6

    if-gt v0, v3, :cond_8

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_9

    if-ge v4, v0, :cond_9

    aget-byte v2, v5, v3

    aget-byte v7, v6, v4

    if-eq v2, v7, :cond_5

    move v2, v1

    :goto_2
    if-ge v3, v2, :cond_2

    if-ge v4, v0, :cond_2

    add-int/lit8 v1, v2, -0x1

    aget-byte v1, v5, v1

    add-int/lit8 v7, v0, -0x1

    aget-byte v7, v6, v7

    if-eq v1, v7, :cond_6

    :cond_2
    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    iget v5, p3, Labcd/jC;->j6:I

    invoke-static {v1, v5, v3}, Labcd/zC;->j6(Labcd/CK;II)I

    move-result v1

    iput v1, p3, Labcd/jC;->j6:I

    iget-object v1, p2, Labcd/tC;->FH:Labcd/CK;

    iget v3, p3, Labcd/jC;->FH:I

    invoke-static {v1, v3, v4}, Labcd/zC;->j6(Labcd/CK;II)I

    move-result v1

    iput v1, p3, Labcd/jC;->FH:I

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    iget v3, p3, Labcd/jC;->DW:I

    invoke-static {v1, v3, v2}, Labcd/zC;->DW(Labcd/CK;II)I

    move-result v1

    iput v1, p3, Labcd/jC;->DW:I

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    iget v3, p3, Labcd/jC;->DW:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Labcd/CK;->DW(I)I

    move-result v1

    if-ge v2, v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_3

    iget-object v3, p1, Labcd/tC;->FH:Labcd/CK;

    iget v4, p3, Labcd/jC;->DW:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Labcd/CK;->DW(I)I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p2, Labcd/tC;->FH:Labcd/CK;

    iget v3, p3, Labcd/jC;->Hw:I

    invoke-static {v2, v3, v0}, Labcd/zC;->DW(Labcd/CK;II)I

    move-result v2

    iput v2, p3, Labcd/jC;->Hw:I

    if-nez v1, :cond_4

    iget-object v1, p2, Labcd/tC;->FH:Labcd/CK;

    iget v2, p3, Labcd/jC;->Hw:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v0, p3, Labcd/jC;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Labcd/jC;->DW:I

    :cond_4
    invoke-super {p0, p1, p2, p3}, Labcd/DC;->j6(Labcd/CC;Labcd/CC;Labcd/jC;)Labcd/jC;

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_9
    move v2, v1

    goto :goto_2
.end method
