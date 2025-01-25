.class Landroidj/support/v4/app/FragmentActivity$HostCallbacks;
.super Landroidj/support/v4/app/FragmentHostCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/app/FragmentHostCallback",
        "<",
        "Landroidj/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidj/support/v4/app/FragmentActivity;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-direct {p0, p1}, Landroidj/support/v4/app/FragmentHostCallback;-><init>(Landroidj/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentActivity;->onAttachFragment(Landroidj/support/v4/app/Fragment;)V

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Landroidj/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->onGetHost()Landroidj/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_9
.end method

.method public onHasView()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onRequestPermissionsFromFragment(Landroidj/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 5
    .param p1  # Landroidj/support/v4/app/Fragment;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroidj/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public onShouldSaveFragmentState(Landroidj/support/v4/app/Fragment;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Landroidj/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onStartActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .param p4  # Landroid/content/Intent;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroidj/support/v4/app/FragmentActivity;->startIntentSenderFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroidj/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
