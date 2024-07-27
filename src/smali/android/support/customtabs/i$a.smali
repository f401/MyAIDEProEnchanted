.class public final Landroid/support/customtabs/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private DW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Landroid/os/Bundle;

.field private Hw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Landroid/content/Intent;

.field private v5:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/customtabs/i$a;-><init>(Landroid/support/customtabs/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/customtabs/n;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/customtabs/i$a;->j6:Landroid/content/Intent;

    iput-object v0, p0, Landroid/support/customtabs/i$a;->DW:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/customtabs/i$a;->FH:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/customtabs/i$a;->Hw:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/customtabs/i$a;->v5:Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/customtabs/i$a;->j6:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/customtabs/n;->DW()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    :goto_0
    const-string v2, "android.support.customtabs.extra.SESSION"

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/customtabs/i$a;->j6:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/customtabs/n;->j6()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public j6()Landroid/support/customtabs/i;
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/i$a;->DW:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/customtabs/i$a;->j6:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Landroid/support/customtabs/i$a;->Hw:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/customtabs/i$a;->j6:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Landroid/support/customtabs/i$a;->j6:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    iget-boolean v2, p0, Landroid/support/customtabs/i$a;->v5:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/support/customtabs/i;

    iget-object v1, p0, Landroid/support/customtabs/i$a;->j6:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/customtabs/i$a;->FH:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/customtabs/i;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/support/customtabs/h;)V

    return-object v0
.end method
