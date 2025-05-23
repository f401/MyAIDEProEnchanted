.class public Lcom/google/android/gms/common/internal/ResolveAccountResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/ResolveAccountResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Landroid/os/IBinder;

.field private FH:Lcom/google/android/gms/common/ConnectionResult;

.field private Hw:Z

.field private final j6:I

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/C;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/C;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->DW:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->FH:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->Hw:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->v5:Z

    return-void
.end method


# virtual methods
.method public DW()Lcom/google/android/gms/common/internal/k;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->DW:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k$a;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public FH()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->FH:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->Hw:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->FH:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->FH:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->DW()Lcom/google/android/gms/common/internal/k;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->DW()Lcom/google/android/gms/common/internal/k;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->v5:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->j6:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->DW:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->FH()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->Hw()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->v5()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
