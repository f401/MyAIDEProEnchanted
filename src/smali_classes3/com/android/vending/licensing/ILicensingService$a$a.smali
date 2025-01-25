.class Lcom/android/vending/licensing/ILicensingService$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/licensing/ILicensingService;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/ILicensingService$a;
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
        field = -0xb2ab0081c7df210L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/vending/licensing/ILicensingService$a$a;

    const-wide v1, 0xd31e854772974d5L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xebf45ecf4a419cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x25f80c9c60dc0087L  # 8.881852556777908E-126

    :try_start_6
    sget-boolean v3, Lcom/android/vending/licensing/ILicensingService$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/vending/licensing/ILicensingService$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/android/vending/licensing/ILicensingService$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x15f09938187322f4L
    .end annotation

    const-wide v0, 0x1b6f9953b127d6c9L

    :try_start_5
    sget-boolean v2, Lcom/android/vending/licensing/ILicensingService$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/android/vending/licensing/ILicensingService$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/android/vending/licensing/ILicensingService$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(JLjava/lang/String;Lcom/android/vending/licensing/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x67e32d38d26f94fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/android/vending/licensing/ILicensingService$a$a;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x2a878ac8be03dc60L  # -5.477939562899053E103

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_3e

    :try_start_18
    const-string v1, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_2b

    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2c

    :cond_2b
    move-object v2, v1

    :goto_2c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/vending/licensing/ILicensingService$a$a;->FH:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_39

    :try_start_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    sget-boolean v1, Lcom/android/vending/licensing/ILicensingService$a$a;->DW:Z

    if-eqz v1, :cond_54

    const-wide v2, -0x2a878ac8be03dc60L  # -5.477939562899053E103

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method
