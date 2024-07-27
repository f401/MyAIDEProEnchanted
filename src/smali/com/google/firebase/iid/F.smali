.class final Lcom/google/firebase/iid/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/firebase/iid/E;

.field private final j6:Lcom/google/firebase/iid/C;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/E;Lcom/google/firebase/iid/C;)V
    .registers 3

    iput-object p1, p0, Lcom/google/firebase/iid/F;->DW:Lcom/google/firebase/iid/E;

    iput-object p2, p0, Lcom/google/firebase/iid/F;->j6:Lcom/google/firebase/iid/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EnhancedIntentService"

    const-string v1, "bg processing of the intent starting now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/F;->DW:Lcom/google/firebase/iid/E;

    invoke-static {v0}, Lcom/google/firebase/iid/E;->j6(Lcom/google/firebase/iid/E;)Lcom/google/firebase/iid/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/F;->j6:Lcom/google/firebase/iid/C;

    iget-object v1, v1, Lcom/google/firebase/iid/C;->j6:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzb;->FH(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/firebase/iid/F;->j6:Lcom/google/firebase/iid/C;

    invoke-virtual {v0}, Lcom/google/firebase/iid/C;->j6()V

    return-void
.end method
