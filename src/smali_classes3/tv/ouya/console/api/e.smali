.class final Ltv/ouya/console/api/e;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/ouya/console/api/f;->j6(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tv.ouya.controller.added"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x4

    const-string v1, "DEVICE_ID"

    const/4 v2, -0x1

    if-eqz p1, :cond_63

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "PLAYER_NUM"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_62

    if-lt p2, v0, :cond_1f

    goto :goto_62

    :cond_1f
    sget-object v0, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v0, v0, p2

    if-eqz v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controller already exists for player "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(new device id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prev device id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ltv/ouya/console/api/f;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OuyaController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    sget-object v0, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    new-instance v1, Ltv/ouya/console/api/f;

    invoke-direct {v1, p1}, Ltv/ouya/console/api/f;-><init>(I)V

    aput-object v1, v0, p2

    goto :goto_8b

    :cond_62
    :goto_62
    return-void

    :cond_63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "tv.ouya.controller.removed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    :goto_74
    if-ge p2, v0, :cond_8b

    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v1, v1, p2

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Ltv/ouya/console/api/f;->DW()I

    move-result v1

    if-ne v1, p1, :cond_88

    sget-object p1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    const/4 v0, 0x0

    aput-object v0, p1, p2

    goto :goto_8b

    :cond_88
    add-int/lit8 p2, p2, 0x1

    goto :goto_74

    :cond_8b
    :goto_8b
    return-void
.end method
