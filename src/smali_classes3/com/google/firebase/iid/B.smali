.class final Lcom/google/firebase/iid/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Landroid/content/Intent;

.field private final FH:Lcom/google/firebase/iid/zzb;

.field private final j6:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 4

    iput-object p1, p0, Lcom/google/firebase/iid/B;->FH:Lcom/google/firebase/iid/zzb;

    iput-object p2, p0, Lcom/google/firebase/iid/B;->j6:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/iid/B;->DW:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/B;->FH:Lcom/google/firebase/iid/zzb;

    iget-object v1, p0, Lcom/google/firebase/iid/B;->j6:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzb;->FH(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/firebase/iid/B;->FH:Lcom/google/firebase/iid/zzb;

    iget-object v1, p0, Lcom/google/firebase/iid/B;->DW:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/firebase/iid/zzb;->j6(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;)V

    return-void
.end method
