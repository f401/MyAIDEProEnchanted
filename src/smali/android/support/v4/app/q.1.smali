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
            "Lx",
            "<",
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

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/U;->j6()V

    goto :goto_0
.end method

.method public abstract DW(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract DW(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract EQ()Z
.end method

.method FH()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/q;->tp:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/q;->tp:Z

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/U;->v5()V

    :cond_1
    :goto_1
    iput-boolean v3, p0, Landroid/support/v4/app/q;->u7:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/q;->u7:Z

    if-nez v0, :cond_1

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/q;->tp:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/q;->j6(Ljava/lang/String;ZZ)Landroid/support/v4/app/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/app/U;->v5:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/U;->v5()V

    goto :goto_1
.end method

.method Hw()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/q;->j6:Landroid/app/Activity;

    return-object v0
.end method

.method J0()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v2

    new-array v3, v2, [Landroid/support/v4/app/U;

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v0, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v1, v3, v0

    invoke-virtual {v1}, Landroid/support/v4/app/U;->VH()V

    invoke-virtual {v1}, Landroid/support/v4/app/U;->FH()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method J8()Labcd/x;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/T;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v3

    new-array v4, v3, [Landroid/support/v4/app/U;

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v0, v2}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/q;->gn()Z

    move-result v5

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v4, v2

    iget-boolean v6, v1, Landroid/support/v4/app/U;->Zo:Z

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    iget-boolean v6, v1, Landroid/support/v4/app/U;->v5:Z

    if-nez v6, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/U;->v5()V

    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/U;->Hw()V

    :cond_2
    iget-boolean v6, v1, Landroid/support/v4/app/U;->Zo:Z

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/U;->j6()V

    iget-object v6, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    iget-object v1, v1, Landroid/support/v4/app/U;->Hw:Ljava/lang/String;

    invoke-virtual {v6, v1}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    :goto_3
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
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
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    if-nez v0, :cond_0

    new-instance v0, Labcd/x;

    invoke-direct {v0}, Labcd/x;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    new-instance v0, Landroid/support/v4/app/U;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/U;-><init>(Ljava/lang/String;Landroid/support/v4/app/q;Z)V

    iget-object v1, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v1, p1, v0}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/app/U;->v5:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/U;->v5()V

    goto :goto_0
.end method

.method j6(Labcd/x;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/T;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Labcd/x;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/U;->j6(Landroid/support/v4/app/q;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
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

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/U;->Zo:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/U;->j6()V

    iget-object v0, p0, Landroid/support/v4/app/q;->Zo:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/q;->tp:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-eqz v0, :cond_0

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

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/U;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method j6(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/support/v4/app/q;->VH:Z

    iget-object v0, p0, Landroid/support/v4/app/q;->gn:Landroid/support/v4/app/U;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/q;->tp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/q;->tp:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/U;->Hw()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/U;->Zo()V

    goto :goto_0
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
