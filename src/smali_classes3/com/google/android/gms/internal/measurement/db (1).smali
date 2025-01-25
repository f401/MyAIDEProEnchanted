.class final Lcom/google/android/gms/internal/measurement/db;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[B

.field private final j6:Lcom/google/android/gms/internal/measurement/lb;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/db;->DW:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->j6([B)Lcom/google/android/gms/internal/measurement/lb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/db;->j6:Lcom/google/android/gms/internal/measurement/lb;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/Xa;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/db;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/measurement/lb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/db;->j6:Lcom/google/android/gms/internal/measurement/lb;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/measurement/Wa;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/db;->j6:Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/lb;->DW()I

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/measurement/fb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/db;->DW:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fb;-><init>([B)V

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
