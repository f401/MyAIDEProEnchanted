.class final synthetic Lcom/google/android/gms/internal/ads/jl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:I

.field private final j6:Lcom/google/android/gms/internal/ads/zzazc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazc;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jl;->j6:Lcom/google/android/gms/internal/ads/zzazc;

    iput p2, p0, Lcom/google/android/gms/internal/ads/jl;->DW:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/jl;->FH:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/jl;->Hw:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jl;->j6:Lcom/google/android/gms/internal/ads/zzazc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/jl;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/jl;->FH:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/jl;->Hw:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzazc;->j6(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
