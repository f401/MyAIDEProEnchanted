.class final Lcom/google/android/gms/internal/measurement/V;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Kb;


# static fields
.field static final j6:Lcom/google/android/gms/internal/measurement/Kb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/V;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/V;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/V;->j6:Lcom/google/android/gms/internal/measurement/Kb;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(I)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/S$b;->j6(I)Lcom/google/android/gms/internal/measurement/S$b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
