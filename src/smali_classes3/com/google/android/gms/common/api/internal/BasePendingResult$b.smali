.class final Lcom/google/android/gms/common/api/internal/BasePendingResult$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/BasePendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/common/api/internal/BasePendingResult;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult$b;->j6:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/internal/H;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$b;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult$b;->j6:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j6(Lcom/google/android/gms/common/api/internal/BasePendingResult;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->DW(Lcom/google/android/gms/common/api/j;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
