.class final enum Lcom/google/android/gms/internal/measurement/Bb;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/measurement/Bb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/measurement/Bb;

.field public static final enum FH:Lcom/google/android/gms/internal/measurement/Bb;

.field public static final enum Hw:Lcom/google/android/gms/internal/measurement/Bb;

.field public static final enum j6:Lcom/google/android/gms/internal/measurement/Bb;

.field private static final v5:[Lcom/google/android/gms/internal/measurement/Bb;


# instance fields
.field private final Zo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v1, "SCALAR"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bb;->j6:Lcom/google/android/gms/internal/measurement/Bb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v1, "VECTOR"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bb;->DW:Lcom/google/android/gms/internal/measurement/Bb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v1, "PACKED_VECTOR"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bb;->FH:Lcom/google/android/gms/internal/measurement/Bb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bb;->Hw:Lcom/google/android/gms/internal/measurement/Bb;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/Bb;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Bb;->j6:Lcom/google/android/gms/internal/measurement/Bb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/Bb;->DW:Lcom/google/android/gms/internal/measurement/Bb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/Bb;->FH:Lcom/google/android/gms/internal/measurement/Bb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/Bb;->Hw:Lcom/google/android/gms/internal/measurement/Bb;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bb;->v5:[Lcom/google/android/gms/internal/measurement/Bb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/Bb;->Zo:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/Bb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Bb;->v5:[Lcom/google/android/gms/internal/measurement/Bb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/Bb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/Bb;

    return-object v0
.end method
