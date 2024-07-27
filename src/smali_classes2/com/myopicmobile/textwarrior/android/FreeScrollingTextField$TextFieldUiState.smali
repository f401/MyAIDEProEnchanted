.class public Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFieldUiState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final _caretPosition:I

.field final _scrollX:I

.field final _scrollY:I

.field final _selectBegin:I

.field final _selectEnd:I

.field final _selectMode:Z


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState$100000011;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState$100000011;-><init>()V

    sput-object v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_caretPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_scrollX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_scrollY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectBegin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectEnd:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretPosition()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_caretPosition:I

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_scrollX:I

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_scrollY:I

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectMode:Z

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectBegin:I

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectEnd:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_caretPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_scrollX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_scrollY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectBegin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField$TextFieldUiState;->_selectEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
