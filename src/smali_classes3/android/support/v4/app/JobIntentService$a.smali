.class final Landroid/support/v4/app/JobIntentService$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Landroid/support/v4/app/JobIntentService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$a;->j6:Landroid/support/v4/app/JobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected DW(Ljava/lang/Void;)V
    .registers 2

    iget-object p1, p0, Landroid/support/v4/app/JobIntentService$a;->j6:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {p1}, Landroid/support/v4/app/JobIntentService;->Hw()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService$a;->j6([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs j6([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    :goto_0
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService$a;->j6:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {p1}, Landroid/support/v4/app/JobIntentService;->j6()Landroid/support/v4/app/JobIntentService$e;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$a;->j6:Landroid/support/v4/app/JobIntentService;

    invoke-interface {p1}, Landroid/support/v4/app/JobIntentService$e;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/JobIntentService;->j6(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/support/v4/app/JobIntentService$e;->j6()V

    goto :goto_0

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method protected j6(Ljava/lang/Void;)V
    .registers 2

    iget-object p1, p0, Landroid/support/v4/app/JobIntentService$a;->j6:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {p1}, Landroid/support/v4/app/JobIntentService;->Hw()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService$a;->j6(Ljava/lang/Void;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService$a;->DW(Ljava/lang/Void;)V

    return-void
.end method
