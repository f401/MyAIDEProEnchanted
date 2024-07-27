.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DW:I

.field final EQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final FH:I

.field final Hw:Ljava/lang/String;

.field final VH:Ljava/lang/CharSequence;

.field final Zo:I

.field final gn:I

.field final j6:[I

.field final tp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final u7:Ljava/lang/CharSequence;

.field final v5:I

.field final we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/app/f;

    invoke-direct {v0}, Landroid/support/v4/app/f;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->DW:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->FH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->Hw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->v5:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->Zo:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->VH:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->gn:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->u7:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->tp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->EQ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->we:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/e;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v1, v3, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    iget-boolean v1, p1, Landroid/support/v4/app/e;->tp:Z

    if-eqz v1, :cond_2

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroid/support/v4/app/e$a;->j6:I

    aput v6, v4, v1

    add-int/lit8 v6, v5, 0x1

    iget-object v1, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/support/v4/app/Fragment;->Zo:I

    :goto_1
    aput v1, v4, v5

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v1, v6, 0x1

    iget v5, v0, Landroid/support/v4/app/e$a;->FH:I

    aput v5, v4, v6

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroid/support/v4/app/e$a;->Hw:I

    aput v6, v4, v1

    add-int/lit8 v6, v5, 0x1

    iget v1, v0, Landroid/support/v4/app/e$a;->v5:I

    aput v1, v4, v5

    add-int/lit8 v1, v6, 0x1

    iget v0, v0, Landroid/support/v4/app/e$a;->Zo:I

    aput v0, v4, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/support/v4/app/e;->gn:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->DW:I

    iget v0, p1, Landroid/support/v4/app/e;->u7:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->FH:I

    iget-object v0, p1, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->Hw:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/e;->J8:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->v5:I

    iget v0, p1, Landroid/support/v4/app/e;->Ws:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->Zo:I

    iget-object v0, p1, Landroid/support/v4/app/e;->QX:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->VH:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/support/v4/app/e;->XL:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->gn:I

    iget-object v0, p1, Landroid/support/v4/app/e;->aM:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->u7:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->tp:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->EQ:Ljava/util/ArrayList;

    iget-boolean v0, p1, Landroid/support/v4/app/e;->U2:Z

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->we:Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Landroid/support/v4/app/x;)Landroid/support/v4/app/e;
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v3, Landroid/support/v4/app/e;

    invoke-direct {v3, p1}, Landroid/support/v4/app/e;-><init>(Landroid/support/v4/app/x;)V

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Landroid/support/v4/app/e$a;

    invoke-direct {v1}, Landroid/support/v4/app/e$a;-><init>()V

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v5, v0, 0x1

    aget v0, v4, v0

    iput v0, v1, Landroid/support/v4/app/e$a;->j6:I

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    if-ltz v0, :cond_1

    iget-object v5, p1, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, v1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v5, v4, 0x1

    aget v4, v0, v4

    iput v4, v1, Landroid/support/v4/app/e$a;->FH:I

    add-int/lit8 v4, v5, 0x1

    aget v5, v0, v5

    iput v5, v1, Landroid/support/v4/app/e$a;->Hw:I

    add-int/lit8 v5, v4, 0x1

    aget v4, v0, v4

    iput v4, v1, Landroid/support/v4/app/e$a;->v5:I

    aget v0, v0, v5

    iput v0, v1, Landroid/support/v4/app/e$a;->Zo:I

    iget v0, v1, Landroid/support/v4/app/e$a;->FH:I

    iput v0, v3, Landroid/support/v4/app/e;->Hw:I

    iget v0, v1, Landroid/support/v4/app/e$a;->Hw:I

    iput v0, v3, Landroid/support/v4/app/e;->v5:I

    iget v0, v1, Landroid/support/v4/app/e$a;->v5:I

    iput v0, v3, Landroid/support/v4/app/e;->Zo:I

    iget v0, v1, Landroid/support/v4/app/e$a;->Zo:I

    iput v0, v3, Landroid/support/v4/app/e;->VH:I

    invoke-virtual {v3, v1}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/e$a;)V

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v5, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackState;->DW:I

    iput v0, v3, Landroid/support/v4/app/e;->gn:I

    iget v0, p0, Landroid/support/v4/app/BackStackState;->FH:I

    iput v0, v3, Landroid/support/v4/app/e;->u7:I

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->Hw:Ljava/lang/String;

    iput-object v0, v3, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    iget v0, p0, Landroid/support/v4/app/BackStackState;->v5:I

    iput v0, v3, Landroid/support/v4/app/e;->J8:I

    iput-boolean v6, v3, Landroid/support/v4/app/e;->tp:Z

    iget v0, p0, Landroid/support/v4/app/BackStackState;->Zo:I

    iput v0, v3, Landroid/support/v4/app/e;->Ws:I

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->VH:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/e;->QX:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v4/app/BackStackState;->gn:I

    iput v0, v3, Landroid/support/v4/app/e;->XL:I

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->u7:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/e;->aM:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->tp:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->EQ:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackState;->we:Z

    iput-boolean v0, v3, Landroid/support/v4/app/e;->U2:Z

    invoke-virtual {v3, v6}, Landroid/support/v4/app/e;->j6(I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/support/v4/app/BackStackState;->DW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/app/BackStackState;->FH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackState;->v5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/app/BackStackState;->Zo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->VH:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/support/v4/app/BackStackState;->gn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->u7:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->tp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->EQ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackState;->we:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
