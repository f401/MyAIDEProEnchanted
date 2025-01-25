.class Landroid/support/v4/app/FragmentActivity$a;
.super Landroid/support/v4/app/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/q<",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final EQ:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0, p1}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public DW(Landroid/support/v4/app/Fragment;)Z
    .registers 2

    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public EQ()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public j6(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/support/v4/app/Fragment;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public tp()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_10
    return v0
.end method

.method public u7()Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public we()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->EQ:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->VH()V

    return-void
.end method
