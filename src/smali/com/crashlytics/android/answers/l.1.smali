.class Lcom/crashlytics/android/answers/l;
.super Lio/fabric/sdk/android/ActivityLifecycleManager$b;


# instance fields
.field private final DW:Lcom/crashlytics/android/answers/q;

.field private final j6:Lcom/crashlytics/android/answers/F;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/answers/F;Lcom/crashlytics/android/answers/q;)V
    .registers 3

    invoke-direct {p0}, Lio/fabric/sdk/android/ActivityLifecycleManager$b;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/l;->j6:Lcom/crashlytics/android/answers/F;

    iput-object p2, p0, Lcom/crashlytics/android/answers/l;->DW:Lcom/crashlytics/android/answers/q;

    return-void
.end method


# virtual methods
.method public DW(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->j6:Lcom/crashlytics/android/answers/F;

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/F;->j6(Landroid/app/Activity;Lcom/crashlytics/android/answers/I$b;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->DW:Lcom/crashlytics/android/answers/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/q;->j6()V

    return-void
.end method

.method public DW(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public FH(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->j6:Lcom/crashlytics/android/answers/F;

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->DW:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/F;->j6(Landroid/app/Activity;Lcom/crashlytics/android/answers/I$b;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->DW:Lcom/crashlytics/android/answers/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/q;->DW()V

    return-void
.end method

.method public Hw(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->j6:Lcom/crashlytics/android/answers/F;

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->j6:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/F;->j6(Landroid/app/Activity;Lcom/crashlytics/android/answers/I$b;)V

    return-void
.end method

.method public j6(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public v5(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->j6:Lcom/crashlytics/android/answers/F;

    sget-object v1, Lcom/crashlytics/android/answers/I$b;->Hw:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/F;->j6(Landroid/app/Activity;Lcom/crashlytics/android/answers/I$b;)V

    return-void
.end method
