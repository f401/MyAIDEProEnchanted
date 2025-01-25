.class public final Lcom/google/android/gms/common/zzk;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Lcom/google/android/gms/common/o;

.field private final FH:Z

.field private final j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/u;

    invoke-direct {v0}, Lcom/google/android/gms/common/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzk;->j6:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/zzk;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzk;->DW:Lcom/google/android/gms/common/o;

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzk;->FH:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzk;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/zzk;->DW:Lcom/google/android/gms/common/o;

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzk;->FH:Z

    return-void
.end method

.method private static j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/o;
    .registers 4

    const-string v0, "Could not unwrap certificate"

    const-string v1, "GoogleCertificatesQuery"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    return-object v2

    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/google/android/gms/common/internal/M;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/L;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/internal/L;->HT()Labcd/ox;

    move-result-object p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_26

    if-nez p0, :cond_14

    move-object p0, v2

    goto :goto_1a

    :cond_14
    invoke-static {p0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_1a
    if-eqz p0, :cond_22

    new-instance v2, Lcom/google/android/gms/common/p;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/p;-><init>([B)V

    goto :goto_25

    :cond_22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-object v2

    :catch_26
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/common/zzk;->j6:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/zzk;->DW:Lcom/google/android/gms/common/o;

    if-nez v0, :cond_18

    const-string v0, "GoogleCertificatesQuery"

    const-string v1, "certificate binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1b

    :cond_18
    invoke-virtual {v0}, Labcd/Dx;->asBinder()Landroid/os/IBinder;

    :goto_1b
    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/common/zzk;->FH:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
