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
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v1, "SCALAR"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Bb;->j6:Lcom/google/android/gms/internal/measurement/Bb;

    new-instance v1, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v2, "VECTOR"

    invoke-direct {v1, v2, v6, v6}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/Bb;->DW:Lcom/google/android/gms/internal/measurement/Bb;

    new-instance v2, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v3, "PACKED_VECTOR"

    invoke-direct {v2, v3, v7, v6}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/Bb;->FH:Lcom/google/android/gms/internal/measurement/Bb;

    new-instance v3, Lcom/google/android/gms/internal/measurement/Bb;

    const-string v4, "MAP"

    invoke-direct {v3, v4, v8, v5}, Lcom/google/android/gms/internal/measurement/Bb;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/Bb;->Hw:Lcom/google/android/gms/internal/measurement/Bb;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/Bb;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lcom/google/android/gms/internal/measurement/Bb;->v5:[Lcom/google/android/gms/internal/measurement/Bb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
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
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Bb;->v5:[Lcom/google/android/gms/internal/measurement/Bb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/Bb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/Bb;

    return-object v0
.end method
