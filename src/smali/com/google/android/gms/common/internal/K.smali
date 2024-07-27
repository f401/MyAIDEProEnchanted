.class public final Lcom/google/android/gms/common/internal/K;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:I

.field private final Hw:Z

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/K;->DW:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/K;->j6:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/K;->Hw:Z

    const/16 v0, 0x81

    iput v0, p0, Lcom/google/android/gms/common/internal/K;->FH:I

    return-void
.end method


# virtual methods
.method final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/K;->FH:I

    return v0
.end method

.method final FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/K;->j6:Ljava/lang/String;

    return-object v0
.end method

.method final j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/K;->DW:Ljava/lang/String;

    return-object v0
.end method
