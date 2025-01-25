.class Landroid/arch/lifecycle/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field DW:Landroid/arch/lifecycle/GenericLifecycleObserver;

.field j6:Landroid/arch/lifecycle/a$b;


# virtual methods
.method j6(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V
    .registers 5

    invoke-static {p2}, Landroid/arch/lifecycle/e;->j6(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/e;->j6(Landroid/arch/lifecycle/a$b;Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$b;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    iget-object v1, p0, Landroid/arch/lifecycle/e$a;->DW:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->j6(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    iput-object v0, p0, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    return-void
.end method
