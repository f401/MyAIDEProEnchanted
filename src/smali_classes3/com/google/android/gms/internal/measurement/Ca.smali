.class final synthetic Lcom/google/android/gms/internal/measurement/Ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Aa;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/measurement/Ba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/Ba;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ca;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Ca;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j6()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ca;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Ca;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/Ba;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
