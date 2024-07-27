.class public final Lcom/google/android/gms/internal/measurement/Bd;
.super Ljava/lang/Object;


# static fields
.field public static final DW:[J

.field private static final FH:[F

.field private static final Hw:[D

.field private static final VH:[[B

.field public static final Zo:[Ljava/lang/String;

.field public static final gn:[B

.field public static final j6:[I

.field private static final v5:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->j6:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->DW:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->FH:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->Hw:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->v5:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->Zo:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->VH:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bd;->gn:[B

    return-void
.end method

.method public static final j6(Lcom/google/android/gms/internal/measurement/pd;I)I
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/pd;->j6()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/pd;->DW(I)Z

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/pd;->DW(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/pd;->DW(II)V

    return v0
.end method
