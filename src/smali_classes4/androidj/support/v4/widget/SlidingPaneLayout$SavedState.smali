.class Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;
.super Landroidj/support/v4/view/AbsSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState$1;

    invoke-direct {v0}, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState$1;-><init>()V

    invoke-static {v0}, Landroidj/support/v4/os/ParcelableCompat;->newCreator(Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidj/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidj/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
