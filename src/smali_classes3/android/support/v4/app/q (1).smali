.class public abstract Landroid/support/v4/app/q;
.super Landroid/support/v4/app/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/o;"
    }
.end annotation


# instance fields
.field final DW:Landroid/content/Context;

.field private final FH:Landroid/os/Handler;

.field final Hw:I

.field private VH:Z

.field private Zo:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/T;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Landroid/support/v4/app/U;

.field private final j6:Landroid/app/Activity;

.field private tp:Z

.field private u7:Z

.field final v5:Landroid/support/v4/app/x;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    invoke-direct {p0}, Landroid/support/v4/app/o;-><init>()V

    new-instance v0, Landroid/support/v4/app/x;

    invoke-direct {v0}, Landroid/support/v4/app/x;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object p1, p0, Landroid/support/v4/app/q;->j6:Landroid/app/Activity;

    iput-object p2, p0, Landroid/support/v4/app/q;->DW:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/app/q;->FH:Landroid/os/Handler;

    iput p4, p0, Landroid/support/v4/app/q;->Hw:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4

    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/q;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method DW()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/U;->j6()V

    return-void
.end method

.method public abstract DW(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract DW(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract EQ()Z
.end method

.method FH()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/q;->tp:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/q;->tp:Z

    iget-object v1, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-eqz v1, :cond_10

    :goto_c
    invoke-virtual {v1}, Landroid/support/v4/app/U;->v5()V

    goto :goto_24

    :cond_10
    iget-boolean v1, p0, Landroid/support/v4/app/q;->u7:Z

    if-nez v1, :cond_24

    const-string v1, "(root)"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/app/q;->j6(Ljava/lang/String;ZZ)Landroid/support/v4/app/U;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-eqz v1, :cond_24

    iget-boolean v2, v1, Landroid/support/v4/app/U;->v5:Z

    if-nez v2, :cond_24

    goto :goto_c

    :cond_24
    :goto_24
    iput-boolean v0, p0, Landroid/support/v4/app/q;->u7:Z

    return-void
.end method

.method Hw()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/q;->j6:Landroid/app/Activity;

    return-object v0
.end method

.method J0()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/app/U;

    add-int/lit8 v2, v0, -0x1

    :goto_c
    if-ltz v2, :cond_1b

    iget-object v3, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v3, v2}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/U;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_29

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/support/v4/app/U;->VH()V

    invoke-virtual {v3}, Landroid/support/v4/app/U;->FH()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    return-void
.end method

.method J8()Labcd/x;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/T;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    new-array v2, v0, [Landroid/support/v4/app/U;

    add-int/lit8 v3, v0, -0x1

    :goto_d
    if-ltz v3, :cond_1c

    iget-object v4, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v4, v3}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/U;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {p0}, Landroid/support/v4/app/q;->gn()Z

    move-result v3

    const/4 v4, 0x0

    :goto_21
    if-ge v1, v0, :cond_48

    aget-object v5, v2, v1

    iget-boolean v6, v5, Landroid/support/v4/app/U;->Zo:Z

    if-nez v6, :cond_35

    if-eqz v3, :cond_35

    iget-boolean v6, v5, Landroid/support/v4/app/U;->v5:Z

    if-nez v6, :cond_32

    invoke-virtual {v5}, Landroid/support/v4/app/U;->v5()V

    :cond_32
    invoke-virtual {v5}, Landroid/support/v4/app/U;->Hw()V

    :cond_35
    iget-boolean v6, v5, Landroid/support/v4/app/U;->Zo:Z

    if-eqz v6, :cond_3b

    const/4 v4, 0x1

    goto :goto_45

    :cond_3b
    invoke-virtual {v5}, Landroid/support/v4/app/U;->j6()V

    iget-object v6, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    iget-object v5, v5, Landroid/support/v4/app/U;->Hw:Ljava/lang/String;

    invoke-virtual {v6, v5}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_48
    move v1, v4

    :cond_49
    if-eqz v1, :cond_4e

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    return-object v0

    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method

.method VH()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/q;->FH:Landroid/os/Handler;

    return-object v0
.end method

.method Zo()Landroid/support/v4/app/x;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    return-object v0
.end method

.method gn()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/q;->VH:Z

    return v0
.end method

.method j6(Ljava/lang/String;ZZ)Landroid/support/v4/app/U;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    if-nez v0, :cond_b

    new-instance v0, Labcd/x;

    invoke-direct {v0}, Labcd/x;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    if-nez v0, :cond_22

    if-eqz p3, :cond_22

    new-instance v0, Landroid/support/v4/app/U;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/U;-><init>(Ljava/lang/String;Landroid/support/v4/app/q;Z)V

    iget-object p2, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {p2, p1, v0}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_22
    if-eqz p2, :cond_2d

    if-eqz v0, :cond_2d

    iget-boolean p1, v0, Landroid/support/v4/app/U;->v5:Z

    if-nez p1, :cond_2d

    invoke-virtual {v0}, Landroid/support/v4/app/U;->v5()V

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method j6(Labcd/x;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/T;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Labcd/x;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p1, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/U;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/U;->j6(Landroid/support/v4/app/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    iput-object p1, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    return-void
.end method

.method abstract j6(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract j6(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end method

.method j6(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    if-eqz v0, :cond_18

    iget-boolean v1, v0, Landroid/support/v4/app/U;->Zo:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Landroid/support/v4/app/U;->j6()V

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/q;->tp:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-eqz v0, :cond_41

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/U;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method j6(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/support/v4/app/q;->VH:Z

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, p0, Landroid/support/v4/app/q;->tp:Z

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/q;->tp:Z

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Landroid/support/v4/app/U;->Hw()V

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Landroid/support/v4/app/U;->Zo()V

    :goto_18
    return-void
.end method

.method public abstract tp()I
.end method

.method public abstract u7()Landroid/view/LayoutInflater;
.end method

.method v5()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/q;->DW:Landroid/content/Context;

    return-object v0
.end method

.method public abstract we()V
.end method
