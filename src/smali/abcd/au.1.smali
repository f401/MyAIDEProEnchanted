.class public final Labcd/au;
.super Labcd/hu;


# static fields
.field public static final DW:Labcd/au;


# instance fields
.field private FH:[I

.field private Hw:I

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/au;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    sput-object v0, Labcd/au;->DW:Labcd/au;

    sget-object v0, Labcd/au;->DW:Labcd/au;

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Labcd/au;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Labcd/hu;-><init>(Z)V

    :try_start_0
    new-array v0, p1, [I

    iput-object v0, p0, Labcd/au;->FH:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput v0, p0, Labcd/au;->Hw:I

    iput-boolean v1, p0, Labcd/au;->v5:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static DW(II)Labcd/au;
    .registers 4

    new-instance v0, Labcd/au;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    invoke-virtual {v0, p0}, Labcd/au;->DW(I)V

    invoke-virtual {v0, p1}, Labcd/au;->DW(I)V

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method

.method public static Zo(I)Labcd/au;
    .registers 3

    new-instance v0, Labcd/au;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    invoke-virtual {v0, p0}, Labcd/au;->DW(I)V

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method

.method private gW()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Labcd/au;->Hw:I

    iget-object v1, p0, Labcd/au;->FH:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/au;->FH:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Labcd/hu;->J8()V

    invoke-direct {p0}, Labcd/au;->gW()V

    iget-object v1, p0, Labcd/au;->FH:[I

    iget v2, p0, Labcd/au;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/au;->Hw:I

    aput p1, v1, v2

    iget-boolean v2, p0, Labcd/au;->v5:Z

    if-eqz v2, :cond_0

    iget v2, p0, Labcd/au;->Hw:I

    if-le v2, v0, :cond_0

    add-int/lit8 v2, v2, -0x2

    aget v1, v1, v2

    if-lt p1, v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Labcd/au;->v5:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public FH(I)I
    .registers 7

    iget v3, p0, Labcd/au;->Hw:I

    iget-boolean v0, p0, Labcd/au;->v5:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v1, p0, Labcd/au;->FH:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    neg-int v0, v3

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    move v0, v3

    :goto_2
    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_5

    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    iget-object v4, p0, Labcd/au;->FH:[I

    aget v4, v4, v2

    if-gt p1, v4, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    if-eq v0, v3, :cond_6

    iget-object v1, p0, Labcd/au;->FH:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    neg-int v0, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public FH(II)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget v0, p0, Labcd/au;->Hw:I

    if-ge p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Labcd/au;->FH:[I

    aput p2, v0, p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/au;->v5:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Labcd/au;->v5(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public VH(I)V
    .registers 5

    iget v0, p0, Labcd/au;->Hw:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Labcd/au;->FH:[I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/au;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/au;->Hw:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Labcd/au;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/au;

    iget-boolean v0, p0, Labcd/au;->v5:Z

    iget-boolean v3, p1, Labcd/au;->v5:Z

    if-ne v0, v3, :cond_0

    iget v0, p0, Labcd/au;->Hw:I

    iget v3, p1, Labcd/au;->Hw:I

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget v3, p0, Labcd/au;->Hw:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Labcd/au;->FH:[I

    aget v3, v3, v0

    iget-object v4, p1, Labcd/au;->FH:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public er()V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-boolean v0, p0, Labcd/au;->v5:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/au;->FH:[I

    const/4 v1, 0x0

    iget v2, p0, Labcd/au;->Hw:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/au;->v5:Z

    :cond_0
    return-void
.end method

.method public get(I)I
    .registers 4

    iget v0, p0, Labcd/au;->Hw:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Labcd/au;->FH:[I

    aget v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gn(I)V
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Labcd/au;->Hw:I

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iput p1, p0, Labcd/au;->Hw:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize > size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Labcd/au;->Hw:I

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/au;->FH:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public j6(II)V
    .registers 7

    iget v0, p0, Labcd/au;->Hw:I

    if-gt p1, v0, :cond_3

    invoke-direct {p0}, Labcd/au;->gW()V

    iget-object v0, p0, Labcd/au;->FH:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Labcd/au;->Hw:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Labcd/au;->FH:[I

    aput p2, v2, p1

    iget v3, p0, Labcd/au;->Hw:I

    const/4 v0, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/au;->Hw:I

    iget-boolean v3, p0, Labcd/au;->v5:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    if-le p2, v2, :cond_2

    :cond_0
    iget v2, p0, Labcd/au;->Hw:I

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Labcd/au;->FH:[I

    aget v1, v2, v1

    if-ge p2, v1, :cond_2

    :cond_1
    :goto_0
    iput-boolean v0, p0, Labcd/au;->v5:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n > size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lg()Labcd/au;
    .registers 5

    iget v1, p0, Labcd/au;->Hw:I

    new-instance v2, Labcd/au;

    invoke-direct {v2, v1}, Labcd/au;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Labcd/au;->FH:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Labcd/au;->DW(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public rN()I
    .registers 3

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget v0, p0, Labcd/au;->Hw:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/au;->get(I)I

    move-result v0

    iget v1, p0, Labcd/au;->Hw:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/au;->Hw:I

    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/au;->Hw:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuffer;

    iget v0, p0, Labcd/au;->Hw:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Labcd/au;->Hw:I

    if-ge v0, v2, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Labcd/au;->FH:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5(I)I
    .registers 3

    invoke-virtual {p0, p1}, Labcd/au;->FH(I)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public yS()I
    .registers 2

    iget v0, p0, Labcd/au;->Hw:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/au;->get(I)I

    move-result v0

    return v0
.end method
