.class Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState$100000011;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;

    invoke-direct {v0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState$100000011;->createFromParcel(Landroid/os/Parcel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-array v0, p1, [Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;

    return-object v0
.end method

.method public bridge newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState$100000011;->newArray(I)[Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;

    move-result-object v0

    return-object v0
.end method
