.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
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
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
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

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    goto :goto_56

    :cond_55
    const/4 p1, 0x0

    :goto_56
    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->we:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/e;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    iget-boolean v1, p1, Landroid/support/v4/app/e;->tp:Z

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v1, v0, :cond_50

    iget-object v3, p1, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e$a;

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/e$a;->j6:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget-object v6, v3, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_30

    iget v6, v6, Landroid/support/v4/app/Fragment;->Zo:I

    goto :goto_31

    :cond_30
    const/4 v6, -0x1

    :goto_31
    aput v6, v4, v5

    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/e$a;->FH:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v6, v3, Landroid/support/v4/app/e$a;->Hw:I

    aput v6, v4, v5

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/e$a;->v5:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v3, v3, Landroid/support/v4/app/e$a;->Zo:I

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_50
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

    iget-boolean p1, p1, Landroid/support/v4/app/e;->U2:Z

    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->we:Z

    return-void

    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw p1

    :goto_86
    goto :goto_85
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Landroid/support/v4/app/x;)Landroid/support/v4/app/e;
    .registers 9

    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0, p1}, Landroid/support/v4/app/e;-><init>(Landroid/support/v4/app/x;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_8d

    new-instance v3, Landroid/support/v4/app/e$a;

    invoke-direct {v3}, Landroid/support/v4/app/e$a;-><init>()V

    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    iput v1, v3, Landroid/support/v4/app/e$a;->j6:I

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instantiate "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " op #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " base fragment #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v5, v6, 0x1

    aget v1, v1, v6

    if-ltz v1, :cond_59

    iget-object v6, p1, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    iput-object v1, v3, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    add-int/lit8 v6, v5, 0x1

    aget v5, v1, v5

    iput v5, v3, Landroid/support/v4/app/e$a;->FH:I

    add-int/lit8 v5, v6, 0x1

    aget v6, v1, v6

    iput v6, v3, Landroid/support/v4/app/e$a;->Hw:I

    add-int/lit8 v6, v5, 0x1

    aget v5, v1, v5

    iput v5, v3, Landroid/support/v4/app/e$a;->v5:I

    aget v1, v1, v6

    iput v1, v3, Landroid/support/v4/app/e$a;->Zo:I

    iget v1, v3, Landroid/support/v4/app/e$a;->FH:I

    iput v1, v0, Landroid/support/v4/app/e;->Hw:I

    iget v1, v3, Landroid/support/v4/app/e$a;->Hw:I

    iput v1, v0, Landroid/support/v4/app/e;->v5:I

    iget v1, v3, Landroid/support/v4/app/e$a;->v5:I

    iput v1, v0, Landroid/support/v4/app/e;->Zo:I

    iget v1, v3, Landroid/support/v4/app/e$a;->Zo:I

    iput v1, v0, Landroid/support/v4/app/e;->VH:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/e$a;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v6, 0x1

    goto/16 :goto_7

    :cond_8d
    iget p1, p0, Landroid/support/v4/app/BackStackState;->DW:I

    iput p1, v0, Landroid/support/v4/app/e;->gn:I

    iget p1, p0, Landroid/support/v4/app/BackStackState;->FH:I

    iput p1, v0, Landroid/support/v4/app/e;->u7:I

    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->Hw:Ljava/lang/String;

    iput-object p1, v0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    iget p1, p0, Landroid/support/v4/app/BackStackState;->v5:I

    iput p1, v0, Landroid/support/v4/app/e;->J8:I

    iput-boolean v4, v0, Landroid/support/v4/app/e;->tp:Z

    iget p1, p0, Landroid/support/v4/app/BackStackState;->Zo:I

    iput p1, v0, Landroid/support/v4/app/e;->Ws:I

    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->VH:Ljava/lang/CharSequence;

    iput-object p1, v0, Landroid/support/v4/app/e;->QX:Ljava/lang/CharSequence;

    iget p1, p0, Landroid/support/v4/app/BackStackState;->gn:I

    iput p1, v0, Landroid/support/v4/app/e;->XL:I

    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->u7:Ljava/lang/CharSequence;

    iput-object p1, v0, Landroid/support/v4/app/e;->aM:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->tp:Ljava/util/ArrayList;

    iput-object p1, v0, Landroid/support/v4/app/e;->j3:Ljava/util/ArrayList;

    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->EQ:Ljava/util/ArrayList;

    iput-object p1, v0, Landroid/support/v4/app/e;->Mr:Ljava/util/ArrayList;

    iget-boolean p1, p0, Landroid/support/v4/app/BackStackState;->we:Z

    iput-boolean p1, v0, Landroid/support/v4/app/e;->U2:Z

    invoke-virtual {v0, v4}, Landroid/support/v4/app/e;->j6(I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->j6:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->DW:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->FH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->Hw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->v5:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->Zo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->VH:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/support/v4/app/BackStackState;->gn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->u7:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->tp:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->EQ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroid/support/v4/app/BackStackState;->we:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
