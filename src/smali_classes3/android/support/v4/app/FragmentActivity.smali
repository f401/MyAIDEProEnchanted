.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/h;

# interfaces
.implements Landroid/support/v4/app/c$a;
.implements Landroid/support/v4/app/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$a;,
        Landroid/support/v4/app/FragmentActivity$b;
    }
.end annotation


# instance fields
.field EQ:Z

.field J0:I

.field J8:Labcd/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field VH:Z

.field final Zo:Landroid/support/v4/app/p;

.field gn:Z

.field tp:Z

.field u7:Z

.field final v5:Landroid/os/Handler;

.field we:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    new-instance v0, Landroid/support/v4/app/n;

    invoke-direct {v0, p0}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/FragmentActivity$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Landroid/support/v4/app/p;->j6(Landroid/support/v4/app/q;)Landroid/support/v4/app/p;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    return-void
.end method

.method private DW(Landroid/support/v4/app/Fragment;)I
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_2e

    :goto_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    iget v2, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    invoke-virtual {v0, v2}, Labcd/y;->FH(I)I

    move-result v0

    if-ltz v0, :cond_1d

    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    goto :goto_b

    :cond_1d
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Labcd/y;->DW(ILjava/lang/Object;)V

    iget p1, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    return v0

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :goto_36
    throw p1

    :goto_37
    goto :goto_36
.end method

.method private static j6(Landroid/support/v4/app/r;Landroid/arch/lifecycle/a$b;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/app/r;->FH()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_17

    goto :goto_8

    :cond_17
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    invoke-virtual {v1, p1}, Landroid/arch/lifecycle/e;->j6(Landroid/arch/lifecycle/a$b;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->gn()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/support/v4/app/r;Landroid/arch/lifecycle/a$b;)V

    goto :goto_8

    :cond_24
    return-void
.end method


# virtual methods
.method public FH()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    return-object v0
.end method

.method Hw()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->EQ:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->FH(Z)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->Zo()V

    return-void
.end method

.method public VH()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public Zo()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->VH:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->gn:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/p;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/r;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public j6()Landroid/arch/lifecycle/a;
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/SupportActivity;->j6()Landroid/arch/lifecycle/a;

    move-result-object v0

    return-object v0
.end method

.method final j6(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/p;->j6(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final j6(I)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->we:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    invoke-static {p1}, Landroid/support/v4/app/g;->DW(I)V

    :cond_a
    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->Hw:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_d

    :try_start_7
    invoke-static {p0, p2, v2, p4}, Landroid/support/v4/app/c;->j6(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_22

    iput-boolean v1, p0, Landroid/support/v4/app/h;->Hw:Z

    return-void

    :cond_d
    :try_start_d
    invoke-static {p3}, Landroid/support/v4/app/g;->DW(I)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->DW(Landroid/support/v4/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    invoke-static {p0, p2, p1, p4}, Landroid/support/v4/app/c;->j6(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_22

    iput-boolean v1, p0, Landroid/support/v4/app/h;->Hw:Z

    return-void

    :catchall_22
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/h;->Hw:Z

    throw p1
.end method

.method j6(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->EQ:Z

    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->Hw()V

    goto :goto_1e

    :cond_12
    if-eqz p1, :cond_1e

    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p1}, Landroid/support/v4/app/p;->EQ()V

    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/p;->FH(Z)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method protected j6(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J8()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4a

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v1, v0}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v2, v0}, Labcd/y;->v5(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_25

    const-string p1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/p;->j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_42

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_42
    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/app/Fragment;->j6(IILandroid/content/Intent;)V

    :goto_49
    return-void

    :cond_4a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->Hw()Z

    move-result v1

    if-eqz v1, :cond_13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_13

    return-void

    :cond_13
    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/support/v4/app/r;->v5()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1b
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->j6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->j6(Landroid/support/v4/app/Fragment;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/SupportActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$b;

    if-eqz v0, :cond_18

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    iget-object v3, v0, Landroid/support/v4/app/FragmentActivity$b;->FH:Labcd/x;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/p;->j6(Labcd/x;)V

    :cond_18
    const/4 v2, 0x0

    if-eqz p1, :cond_6c

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    if-eqz v0, :cond_27

    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$b;->DW:Landroid/support/v4/app/y;

    :cond_27
    invoke-virtual {v4, v3, v1}, Landroid/support/v4/app/p;->j6(Landroid/os/Parcelable;Landroid/support/v4/app/y;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android:support:request_fragment_who"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_65

    if-eqz p1, :cond_65

    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_4d

    goto :goto_65

    :cond_4d
    new-instance v1, Labcd/y;

    array-length v3, v0

    invoke-direct {v1, v3}, Labcd/y;-><init>(I)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    const/4 v1, 0x0

    :goto_56
    array-length v3, v0

    if-ge v1, v3, :cond_6c

    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Labcd/y;->DW(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_65
    :goto_65
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    if-nez p1, :cond_79

    new-instance p1, Labcd/y;

    invoke-direct {p1}, Labcd/y;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    iput v2, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    :cond_79
    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p1}, Landroid/support/v4/app/p;->DW()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 5

    if-nez p1, :cond_12

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/p;->j6(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->j6(Z)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->FH()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->tp()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->Hw()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    if-eqz p1, :cond_16

    const/4 v0, 0x6

    if-eq p1, v0, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/p;->j6(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_16
    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/p;->DW(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->j6(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p1}, Landroid/support/v4/app/p;->J8()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    if-eqz p1, :cond_3

    goto :goto_8

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->j6(Landroid/view/Menu;)V

    :goto_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->gn:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->v5()V

    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->v5()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->DW(Z)V

    return-void
.end method

.method protected onPostResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->v5()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->we()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p2, p3}, Landroid/support/v4/app/p;->DW(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v2, v0}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v3, v0}, Labcd/y;->v5(I)V

    const-string v0, "FragmentActivity"

    if-nez v2, :cond_21

    const-string p1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/p;->j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_3e
    and-int/2addr p1, v1

    invoke-virtual {v3, p1, p2, p3}, Landroid/support/v4/app/Fragment;->j6(I[Ljava/lang/String;[I)V

    :cond_42
    :goto_42
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->gn:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->we()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->j6(Z)V

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->Zo()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v1}, Landroid/support/v4/app/p;->XL()Landroid/support/v4/app/y;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v2}, Landroid/support/v4/app/p;->QX()Labcd/x;

    move-result-object v2

    if-nez v1, :cond_20

    if-nez v2, :cond_20

    if-nez v0, :cond_20

    const/4 v0, 0x0

    return-object v0

    :cond_20
    new-instance v3, Landroid/support/v4/app/FragmentActivity$b;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$b;-><init>()V

    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$b;->j6:Ljava/lang/Object;

    iput-object v1, v3, Landroid/support/v4/app/FragmentActivity$b;->DW:Landroid/support/v4/app/y;

    iput-object v2, v3, Landroid/support/v4/app/FragmentActivity$b;->FH:Labcd/x;

    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/SupportActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/a$b;->FH:Landroid/arch/lifecycle/a$b;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/support/v4/app/r;Landroid/arch/lifecycle/a$b;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->aM()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    if-lez v0, :cond_60

    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v1}, Labcd/y;->DW()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_39
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v3}, Labcd/y;->DW()I

    move-result v3

    if-ge v2, v3, :cond_56

    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v3, v2}, Labcd/y;->Hw(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v3, v2}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_56
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->VH:Z

    if-nez v0, :cond_19

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->VH:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j6()V

    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J8()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->we()Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->EQ()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->gn()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->Ws()V

    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J8()V

    return-void
.end method

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v1

    sget-object v2, Landroid/arch/lifecycle/a$b;->FH:Landroid/arch/lifecycle/a$b;

    invoke-static {v1, v2}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/support/v4/app/r;Landroid/arch/lifecycle/a$b;)V

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->u7()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/h;->Hw:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    invoke-static {p2}, Landroid/support/v4/app/g;->DW(I)V

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 7

    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/g;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8

    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/h;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method protected v5()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->VH()V

    return-void
.end method
