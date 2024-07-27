.class final synthetic Lcom/google/android/gms/internal/ads/Co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Z

.field private final FH:J

.field private final j6:Lcom/google/android/gms/internal/ads/Dn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Dn;ZJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Co;->j6:Lcom/google/android/gms/internal/ads/Dn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Co;->DW:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/Co;->FH:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Co;->j6:Lcom/google/android/gms/internal/ads/Dn;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Co;->DW:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Co;->FH:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Dn;->j6(ZJ)V

    return-void
.end method
