.class Lcom/google/android/gms/internal/measurement/lb$a;
.super Lcom/google/android/gms/internal/measurement/lb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final Hw:[B

.field private VH:I

.field private final Zo:I

.field private final v5:I


# direct methods
.method constructor <init>([BII)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/lb;-><init>(Lcom/google/android/gms/internal/measurement/mb;)V

    if-eqz p1, :cond_1

    array-length v0, p1

    add-int v1, p2, p3

    or-int v2, p2, p3

    sub-int/2addr v0, v1

    or-int/2addr v0, v2

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iput p2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->v5:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    iput v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DW()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final DW(I)V
    .registers 9

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/lb;->FH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    int-to-long v2, v1

    int-to-byte v1, p1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    int-to-long v2, v1

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    :cond_2
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final DW(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(I)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/measurement/Wa;)V
    .registers 6

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/lb$a;->FH(II)V

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(ILcom/google/android/gms/internal/measurement/Wa;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/measurement/lc;)V
    .registers 6

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/lb$a;->FH(II)V

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(ILcom/google/android/gms/internal/measurement/lc;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/measurement/Wa;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/Wa;->j6(Lcom/google/android/gms/internal/measurement/Va;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 7

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    add-int v0, v1, v2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/bd;->j6(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    sub-int v3, v0, v1

    sub-int v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    iput v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/bd;->j6(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/bd;->j6(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/fd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/fd;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final DW([BII)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final FH(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    return-void
.end method

.method public final FH(IJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/lb$a;->FH(J)V

    return-void
.end method

.method public final FH(J)V
    .registers 10

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final FH(Lcom/google/android/gms/internal/measurement/lc;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/lc;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/lc;->j6(Lcom/google/android/gms/internal/measurement/lb;)V

    return-void
.end method

.method public final Hw()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->v5:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final Hw(I)V
    .registers 9

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method public final j6(B)V
    .registers 9

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    aput-byte p1, v0, v1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(J)V

    goto :goto_0
.end method

.method public final j6(II)V
    .registers 4

    shl-int/lit8 v0, p1, 0x3

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    return-void
.end method

.method public final j6(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(J)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/measurement/Wa;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(Lcom/google/android/gms/internal/measurement/Wa;)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/measurement/lc;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->FH(Lcom/google/android/gms/internal/measurement/lc;)V

    return-void
.end method

.method final j6(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/Oa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Oa;->gn()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/measurement/Cc;->FH(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/Oa;->j6(I)V

    :cond_0
    move v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb;->FH:Lcom/google/android/gms/internal/measurement/nb;

    invoke-interface {p3, p2, v0}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V

    return-void
.end method

.method public final j6(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(B)V

    return-void
.end method

.method public final j6(J)V
    .registers 16

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x80

    const/4 v4, 0x7

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/lb;->FH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/lb$a;->DW()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    :goto_0
    and-long v0, p1, v8

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    int-to-long v2, v1

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    int-to-long v2, v1

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    ushr-long/2addr p1, v4

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-long/2addr p1, v4

    :cond_2
    and-long v0, p1, v8

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/measurement/lb$a;->VH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/android/gms/internal/measurement/lb$a;->Zo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final j6([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb$a;->DW([BII)V

    return-void
.end method

.method public final v5(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$a;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$a;->Hw(I)V

    return-void
.end method
