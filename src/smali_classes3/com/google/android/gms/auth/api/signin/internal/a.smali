.class public Lcom/google/android/gms/auth/api/signin/internal/a;
.super Ljava/lang/Object;


# static fields
.field private static j6:I = 0x1f


# instance fields
.field private DW:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->DW:I

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->DW:I

    return v0
.end method

.method public j6(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/a;
    .registers 4

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/a;->j6:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->DW:I

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_c
    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->DW:I

    return-object p0
.end method

.method public final j6(Z)Lcom/google/android/gms/auth/api/signin/internal/a;
    .registers 4

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/a;->j6:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->DW:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->DW:I

    return-object p0
.end method
