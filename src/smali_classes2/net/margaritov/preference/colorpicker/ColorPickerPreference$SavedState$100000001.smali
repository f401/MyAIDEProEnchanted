.class Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$100000001;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;",
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
.method public bridge createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$100000001;->createFromParcel(Landroid/os/Parcel;)Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    .registers 3

    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$100000001;->newArray(I)[Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    .registers 3

    new-array v0, p1, [Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    return-object v0
.end method
