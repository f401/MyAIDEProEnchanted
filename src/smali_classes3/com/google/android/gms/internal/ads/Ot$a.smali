.class Lcom/google/android/gms/internal/ads/Ot$a;
.super Lcom/google/android/gms/internal/ads/Ot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/Ot;
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
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ot;-><init>(Lcom/google/android/gms/internal/ads/Pt;)V

    if-eqz p1, :cond_3d

    array-length v0, p1

    add-int v1, p2, p3

    or-int v2, p2, p3

    sub-int/2addr v0, v1

    or-int/2addr v0, v2

    if-ltz v0, :cond_18

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->v5:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final DW()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final DW(I)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ot;->Hw()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ot$a;->DW()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_34

    :goto_e
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/Ev;->j6([BJB)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    int-to-long v1, v1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_e

    :cond_34
    :goto_34
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_44

    :try_start_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_40
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_40} :catch_56

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_4c} :catch_56

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_34

    :catch_56
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/Pu;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/Ot$a;->gn(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/yt;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/Ot$a;->gn(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yt;->j6(Lcom/google/android/gms/internal/ads/xt;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v2

    if-ne v2, v1, :cond_2f

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ot$a;->DW()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    return-void

    :cond_2f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ot$a;->DW()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_44
    .catch Lcom/google/android/gms/internal/ads/Kv; {:try_start_2 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4c
    move-exception v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Kv;)V

    return-void
.end method

.method public final DW([BII)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final FH(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$a;->FH(J)V

    return-void
.end method

.method public final FH(J)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_60

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_e
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_10} :catch_60

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_1a
    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1c} :catch_60

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26 .. :try_end_28} :catch_60

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_32
    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_34} :catch_60

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_3e
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_40
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_40} :catch_60

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_4a
    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_4c} :catch_60

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_56
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_58} :catch_60

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2

    return-void

    :catch_60
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/Pu;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Pu;->Hw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/Pu;->j6(Lcom/google/android/gms/internal/ads/Ot;)V

    return-void
.end method

.method public final Hw(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_27

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_d
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_f} :catch_27

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_16
    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_18} :catch_27

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_1f
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_21} :catch_27

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    :catch_27
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final VH(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->j6(I)V

    return-void
.end method

.method public final Zo(II)V
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    return-void
.end method

.method public final gn(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    return-void
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method public final j6(B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_b

    aput-byte p1, v0, v1

    return-void

    :catch_b
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$a;->j6(J)V

    return-void
.end method

.method public final j6(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$a;->j6(J)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Pu;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->FH(Lcom/google/android/gms/internal/ads/Pu;)V

    return-void
.end method

.method final j6(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)V
    .registers 6

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/pt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pt;->gn()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/fv;->DW(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/pt;->j6(I)V

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ot;->FH:Lcom/google/android/gms/internal/ads/Qt;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/yt;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method public final j6(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$a;->j6(B)V

    return-void
.end method

.method public final j6(J)V
    .registers 12

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ot;->Hw()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ot$a;->DW()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/Ev;->j6([BJB)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/ads/Ev;->j6([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_13

    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_4a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_4a} :catch_61

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Hw:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4f .. :try_end_57} :catch_61

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    ushr-long/2addr p1, v1

    goto :goto_3c

    :catch_61
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->Zo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :goto_8a
    throw p2

    :goto_8b
    goto :goto_8a
.end method

.method public final j6([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$a;->DW([BII)V

    return-void
.end method

.method public final tp(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$a;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$a;->Hw(I)V

    return-void
.end method

.method public final v5()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ot$a;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ot$a;->v5:I

    sub-int/2addr v0, v1

    return v0
.end method
