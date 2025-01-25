.class public final enum Lcom/google/android/gms/internal/measurement/S$b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Ib;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/S$b;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/Ib;"
    }
.end annotation


# static fields
.field private static final enum DW:Lcom/google/android/gms/internal/measurement/S$b;

.field private static final FH:Lcom/google/android/gms/internal/measurement/Jb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Jb<",
            "Lcom/google/android/gms/internal/measurement/S$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final Hw:[Lcom/google/android/gms/internal/measurement/S$b;

.field private static final enum j6:Lcom/google/android/gms/internal/measurement/S$b;


# instance fields
.field private final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/S$b;

    const-string v1, "RADS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/S$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/S$b;->j6:Lcom/google/android/gms/internal/measurement/S$b;

    new-instance v1, Lcom/google/android/gms/internal/measurement/S$b;

    const-string v4, "PROVISIONING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/S$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/S$b;->DW:Lcom/google/android/gms/internal/measurement/S$b;

    new-array v4, v5, [Lcom/google/android/gms/internal/measurement/S$b;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/google/android/gms/internal/measurement/S$b;->Hw:[Lcom/google/android/gms/internal/measurement/S$b;

    new-instance v0, Lcom/google/android/gms/internal/measurement/U;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/U;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/S$b;->FH:Lcom/google/android/gms/internal/measurement/Jb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/measurement/S$b;->v5:I

    return-void
.end method

.method public static Hw()Lcom/google/android/gms/internal/measurement/Kb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/V;->j6:Lcom/google/android/gms/internal/measurement/Kb;

    return-object v0
.end method

.method public static j6(I)Lcom/google/android/gms/internal/measurement/S$b;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/measurement/S$b;->DW:Lcom/google/android/gms/internal/measurement/S$b;

    return-object p0

    :cond_b
    sget-object p0, Lcom/google/android/gms/internal/measurement/S$b;->j6:Lcom/google/android/gms/internal/measurement/S$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/S$b;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/S$b;->Hw:[Lcom/google/android/gms/internal/measurement/S$b;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/S$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/S$b;

    return-object v0
.end method


# virtual methods
.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/S$b;->v5:I

    return v0
.end method
