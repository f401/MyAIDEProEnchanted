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
            "Ly",
            "<",
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
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    new-instance v0, Landroid/support/v4/app/n;

    invoke-direct {v0, p0}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/FragmentActivity$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Landroid/support/v4/app/p;->j6(Landroid/support/v4/app/q;)Landroid/support/v4/app/p;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    return-void
.end method

.method private DW(Landroid/support/v4/app/Fragment;)I
    .registers 6

    const v3, 0xfffe

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    if-ge v0, v3, :cond_1

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    invoke-virtual {v0, v1}, Labcd/y;->FH(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Labcd/y;->DW(ILjava/lang/Object;)V

    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Landroid/support/v4/app/r;Landroid/arch/lifecycle/a$b;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/app/r;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    invoke-virtual {v2, p1}, Landroid/arch/lifecycle/e;->j6(Landroid/arch/lifecycle/a$b;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->gn()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/support/v4/app/r;Landroid/arch/lifecycle/a$b;)V

    goto :goto_0

    :cond_1
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

    move-result-object v0

    return-object v0
.end method

.method public final j6(I)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->we:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/app/g;->DW(I)V

    :cond_0
    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->Hw:Z

    if-ne p3, v1, :cond_0

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/c;->j6(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/app/h;->Hw:Z

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/g;->DW(I)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->DW(Landroid/support/v4/app/Fragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/c;->j6(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/app/h;->Hw:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/h;->Hw:Z

    throw v0
.end method

.method j6(Z)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->EQ:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->Hw()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->EQ()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->FH(Z)V

    goto :goto_0
.end method

.method protected j6(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J8()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0, v1}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v2, v1}, Labcd/y;->v5(I)V

    if-nez v0, :cond_0

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for who: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FragmentActivity"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/Fragment;->j6(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->Hw()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/r;->v5()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->j6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->j6(Landroid/support/v4/app/Fragment;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/SupportActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$b;

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    iget-object v4, v0, Landroid/support/v4/app/FragmentActivity$b;->FH:Labcd/x;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/p;->j6(Labcd/x;)V

    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$b;->DW:Landroid/support/v4/app/y;

    :goto_0
    invoke-virtual {v4, v3, v0}, Landroid/support/v4/app/p;->j6(Landroid/os/Parcelable;Landroid/support/v4/app/y;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v1

    array-length v4, v3

    if-eq v0, v4, :cond_4

    :cond_1
    const-string v0, "FragmentActivity"

    const-string v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    if-nez v0, :cond_3

    new-instance v0, Labcd/y;

    invoke-direct {v0}, Labcd/y;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    iput v2, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->DW()V

    return-void

    :cond_4
    new-instance v0, Labcd/y;

    array-length v4, v1

    invoke-direct {v0, v4}, Labcd/y;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    move v0, v2

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Labcd/y;->DW(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/p;->j6(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
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

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->j6(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->DW(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->j6(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->J8()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    if-eqz p1, :cond_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->j6(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onPause()V
    .registers 3

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->gn:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->v5()V

    :cond_0
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
    .registers 6

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/p;->DW(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    const v3, 0xffff

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0, v1}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v2, v1}, Labcd/y;->v5(I)V

    if-nez v0, :cond_1

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for who: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FragmentActivity"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/Fragment;->j6(I[Ljava/lang/String;[I)V

    goto :goto_0
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

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->j6(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->Zo()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->XL()Landroid/support/v4/app/y;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->QX()Labcd/x;

    move-result-object v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/app/FragmentActivity$b;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity$b;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/FragmentActivity$b;->j6:Ljava/lang/Object;

    iput-object v2, v0, Landroid/support/v4/app/FragmentActivity$b;->DW:Landroid/support/v4/app/y;

    iput-object v3, v0, Landroid/support/v4/app/FragmentActivity$b;->FH:Labcd/x;

    goto :goto_0
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

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->J0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    new-array v2, v0, [I

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0, v1}, Labcd/y;->Hw(I)I

    move-result v0

    aput v0, v2, v1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->J8:Labcd/y;

    invoke-virtual {v0, v1}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->tp:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->VH:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->VH:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j6()V

    :cond_0
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

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->u7:Z

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/a$b;->FH:Landroid/arch/lifecycle/a$b;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentActivity;->j6(Landroid/support/v4/app/r;Landroid/arch/lifecycle/a$b;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->v5:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->Zo:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->u7()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/h;->Hw:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/g;->DW(I)V

    :cond_0
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
