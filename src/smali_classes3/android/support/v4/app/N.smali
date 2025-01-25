.class final Landroid/support/v4/app/N;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/util/ArrayList;

.field final FH:Ljava/lang/Object;

.field final Hw:Ljava/util/ArrayList;

.field final Zo:Ljava/util/ArrayList;

.field final j6:Ljava/lang/Object;

.field final v5:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 7

    iput-object p1, p0, Landroid/support/v4/app/N;->j6:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/N;->DW:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/support/v4/app/N;->FH:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/N;->Hw:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/N;->v5:Ljava/lang/Object;

    iput-object p6, p0, Landroid/support/v4/app/N;->Zo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 4

    iget-object p1, p0, Landroid/support/v4/app/N;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Landroid/support/v4/app/N;->DW:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_a
    iget-object p1, p0, Landroid/support/v4/app/N;->FH:Ljava/lang/Object;

    if-eqz p1, :cond_13

    iget-object v1, p0, Landroid/support/v4/app/N;->Hw:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_13
    iget-object p1, p0, Landroid/support/v4/app/N;->v5:Ljava/lang/Object;

    if-eqz p1, :cond_1c

    iget-object v1, p0, Landroid/support/v4/app/N;->Zo:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0}, Landroid/support/v4/app/Q;->j6(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1c
    return-void
.end method
