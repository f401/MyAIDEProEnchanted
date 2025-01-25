.class final Lcom/google/android/gms/common/internal/x;
.super Lcom/google/android/gms/common/internal/f;


# instance fields
.field private final DW:Landroid/support/v4/app/Fragment;

.field private final FH:I

.field private final j6:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/support/v4/app/Fragment;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/x;->j6:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/x;->DW:Landroid/support/v4/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/x;->FH:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->j6:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->DW:Landroid/support/v4/app/Fragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/x;->FH:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
