.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParcel:Landroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$1;

    invoke-direct {v0}, Landroidx/versionedparcelable/ParcelImpl$1;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/versionedparcelable/VersionedParcelParcel;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    return-void
.end method

.method public constructor <init>(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionedParcel()Landroidx/versionedparcelable/VersionedParcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    new-instance v0, Landroidx/versionedparcelable/VersionedParcelParcel;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;)V

    iget-object v1, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {v0, v1}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    return-void
.end method
