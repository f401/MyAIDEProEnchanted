.class final synthetic Lcom/google/firebase/iid/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Landroid/os/Bundle;

.field private final FH:Labcd/Zx;

.field private final j6:Lcom/google/firebase/iid/P;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/P;Landroid/os/Bundle;Labcd/Zx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/Q;->j6:Lcom/google/firebase/iid/P;

    iput-object p2, p0, Lcom/google/firebase/iid/Q;->DW:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/firebase/iid/Q;->FH:Labcd/Zx;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/Q;->j6:Lcom/google/firebase/iid/P;

    iget-object v1, p0, Lcom/google/firebase/iid/Q;->DW:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/firebase/iid/Q;->FH:Labcd/Zx;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/P;->j6(Landroid/os/Bundle;Labcd/Zx;)V

    return-void
.end method
