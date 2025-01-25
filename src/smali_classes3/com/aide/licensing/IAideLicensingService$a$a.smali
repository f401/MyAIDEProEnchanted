.class Lcom/aide/licensing/IAideLicensingService$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/licensing/IAideLicensingService;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/licensing/IAideLicensingService$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Landroid/os/IBinder;
    .annotation runtime Labcd/ru;
        field = -0x14c394071603c15cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/licensing/IAideLicensingService$a$a;

    const-wide v1, -0xbb98acd73d6f0bL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2fb17870f01e380L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x67ce10d1b581a9f0L  # 1.0716638316116869E192

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/IAideLicensingService$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/licensing/IAideLicensingService$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/IAideLicensingService$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x11e2d7c07a328600L
    .end annotation

    const-wide v0, -0x1c9dc273bae28a60L  # -5.507093258518842E170

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/IAideLicensingService$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/licensing/IAideLicensingService$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/IAideLicensingService$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/licensing/g;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2cb59327d8675978L
    .end annotation

    const-wide v0, 0x221e77bc4703ec3cL

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/IAideLicensingService$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_30

    :try_start_10
    const-string v3, "com.aide.licensing.IAideLicensingService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/licensing/IAideLicensingService$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    :try_start_27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/IAideLicensingService$a$a;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method
