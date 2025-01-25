.class public Lcom/google/android/gms/common/internal/SignInButtonConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/SignInButtonConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:[Lcom/google/android/gms/common/api/Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final j6:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/D;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/D;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->j6:I

    iput p2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->DW:I

    iput p3, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->FH:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->Hw:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method

.method public constructor <init>(II[Lcom/google/android/gms/common/api/Scope;)V
    .registers 5

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->DW:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->FH:I

    return v0
.end method

.method public Hw()[Lcom/google/android/gms/common/api/Scope;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->Hw:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->j6:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->DW()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->FH()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->Hw()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
