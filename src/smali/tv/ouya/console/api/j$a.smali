.class Ltv/ouya/console/api/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 5

    invoke-static {}, Ltv/ouya/console/api/j;->j6()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ltv/ouya/console/api/f;->j6(I)Ltv/ouya/console/api/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/ouya/console/api/j;->DW()Ltv/ouya/console/api/d;

    move-result-object v1

    invoke-static {}, Ltv/ouya/console/api/j;->DW()Ltv/ouya/console/api/d;

    move-result-object v2

    invoke-virtual {v0}, Ltv/ouya/console/api/f;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/ouya/console/api/d;->j6(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/ouya/console/api/d;->j6(I)Ltv/ouya/console/api/d$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/ouya/console/api/j;->j6()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ltv/ouya/console/api/j;->FH()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputDeviceAdded device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3

    invoke-static {}, Ltv/ouya/console/api/j;->j6()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/ouya/console/api/j;->j6()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
