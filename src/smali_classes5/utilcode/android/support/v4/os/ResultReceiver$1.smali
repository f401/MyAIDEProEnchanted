.class final Lutilcode/android/support/v4/os/ResultReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/android/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lutilcode/android/support/v4/os/ResultReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lutilcode/android/support/v4/os/ResultReceiver$1;->createFromParcel(Landroid/os/Parcel;)Lutilcode/android/support/v4/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lutilcode/android/support/v4/os/ResultReceiver;
    .registers 3

    new-instance v0, Lutilcode/android/support/v4/os/ResultReceiver;

    invoke-direct {v0, p1}, Lutilcode/android/support/v4/os/ResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lutilcode/android/support/v4/os/ResultReceiver$1;->newArray(I)[Lutilcode/android/support/v4/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lutilcode/android/support/v4/os/ResultReceiver;
    .registers 3

    new-array v0, p1, [Lutilcode/android/support/v4/os/ResultReceiver;

    return-object v0
.end method
