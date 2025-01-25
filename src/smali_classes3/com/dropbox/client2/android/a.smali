.class public Lcom/dropbox/client2/android/a;
.super Labcd/Ww;


# direct methods
.method public constructor <init>(Labcd/Yw;Labcd/Zw$a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Ww;-><init>(Labcd/Yw;Labcd/Zw$a;)V

    return-void
.end method

.method public constructor <init>(Labcd/Yw;Labcd/Zw$a;Labcd/Xw;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/Ww;-><init>(Labcd/Yw;Labcd/Zw$a;Labcd/Xw;)V

    return-void
.end method


# virtual methods
.method public EQ()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->Hw:Landroid/content/Intent;

    if-eqz v0, :cond_5b

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "ACCESS_SECRET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4b

    const-string v3, "UID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "oauth2:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p0, v2}, Labcd/Ww;->j6(Ljava/lang/String;)V

    goto :goto_42

    :cond_3a
    new-instance v3, Labcd/Xw;

    invoke-direct {v3, v1, v2}, Labcd/Xw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Labcd/Ww;->j6(Labcd/Xw;)V

    :goto_42
    return-object v0

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid result intent passed in. Missing uid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid result intent passed in. Missing access secret."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid result intent passed in. Missing access token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public j6(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Labcd/Ww;->gn()Labcd/Yw;

    move-result-object v0

    iget-object v1, v0, Labcd/_w;->j6:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/dropbox/client2/android/AuthActivity;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    iget-object v1, v0, Labcd/_w;->j6:Ljava/lang/String;

    iget-object v0, v0, Labcd/_w;->DW:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dropbox/client2/android/AuthActivity;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/client2/android/AuthActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_25

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_25
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public tp()Z
    .registers 6

    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->Hw:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "ACCESS_TOKEN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCESS_SECRET"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UID"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_34

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    if-eqz v3, :cond_34

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    if-eqz v0, :cond_34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    return v0

    :cond_34
    return v1
.end method

.method public u7()V
    .registers 2

    invoke-super {p0}, Labcd/Ww;->u7()V

    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->Hw:Landroid/content/Intent;

    return-void
.end method
