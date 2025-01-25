.class final Lcom/google/android/gms/internal/measurement/ab;
.super Lcom/google/android/gms/internal/measurement/fb;


# instance fields
.field private final VH:I

.field private final Zo:I


# direct methods
.method constructor <init>([BII)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/fb;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/Wa;->DW(III)I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/ab;->Zo:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/ab;->VH:I

    return-void
.end method


# virtual methods
.method protected final Hw()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ab;->Zo:I

    return v0
.end method

.method final Zo(I)B
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ab;->Zo:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ab;->VH:I

    return v0
.end method

.method public final v5(I)B
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_47

    if-gez p1, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ab;->Zo:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method
