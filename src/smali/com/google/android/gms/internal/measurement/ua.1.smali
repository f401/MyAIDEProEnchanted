.class final synthetic Lcom/google/android/gms/internal/measurement/ua;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Aa;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/measurement/ta;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ta;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ua;->j6:Lcom/google/android/gms/internal/measurement/ta;

    return-void
.end method


# virtual methods
.method public final j6()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ua;->j6:Lcom/google/android/gms/internal/measurement/ta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ta;->FH()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
