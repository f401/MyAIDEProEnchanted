.class final Lcom/google/android/gms/internal/measurement/Ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:[Ljava/lang/Object;

.field private final Hw:I

.field private final j6:Lcom/google/android/gms/internal/measurement/lc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ac;->j6:Lcom/google/android/gms/internal/measurement/lc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Ac;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/Ac;->FH:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_16

    iput p1, p0, Lcom/google/android/gms/internal/measurement/Ac;->Hw:I

    return-void

    :cond_16
    and-int/lit16 p1, p1, 0x1fff

    const/4 v0, 0x1

    const/16 v1, 0xd

    :goto_1b
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, p3, :cond_2a

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v1

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    shl-int p2, v2, v1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/Ac;->Hw:I

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Ac;->Hw:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final FH()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Ac;->Hw:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->u7:I

    return v0

    :cond_9
    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->tp:I

    return v0
.end method

.method final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ac;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/measurement/lc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ac;->j6:Lcom/google/android/gms/internal/measurement/lc;

    return-object v0
.end method

.method final v5()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ac;->FH:[Ljava/lang/Object;

    return-object v0
.end method
