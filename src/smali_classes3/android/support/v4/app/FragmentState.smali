.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DW:I

.field EQ:Landroid/os/Bundle;

.field final FH:Z

.field final Hw:I

.field final VH:Z

.field final Zo:Ljava/lang/String;

.field final gn:Z

.field final j6:Ljava/lang/String;

.field final tp:Z

.field final u7:Landroid/os/Bundle;

.field final v5:I

.field we:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/app/A;

    invoke-direct {v0}, Landroid/support/v4/app/A;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j6:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->DW:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->FH:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->Hw:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->v5:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->Zo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->VH:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->gn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->u7:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    const/4 v1, 0x1

    :cond_51
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->tp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j6:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/app/Fragment;->Zo:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->DW:I

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J8:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->FH:Z

    iget v0, p1, Landroid/support/v4/app/Fragment;->rN:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->Hw:I

    iget v0, p1, Landroid/support/v4/app/Fragment;->er:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->v5:I

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->Zo:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->vy:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->VH:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->BT:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->gn:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->gn:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->u7:Landroid/os/Bundle;

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->gW:Z

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentState;->tp:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Landroid/support/v4/app/q;Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/y;)Landroid/support/v4/app/Fragment;
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_81

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->u7:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_13
    if-eqz p2, :cond_1e

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->j6:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/FragmentState;->u7:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/o;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    goto :goto_26

    :cond_1e
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->j6:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->u7:Landroid/os/Bundle;

    invoke-static {v0, p2, v1}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    :goto_26
    iput-object p2, p0, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    if-eqz p2, :cond_39

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    :cond_39
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    iget v0, p0, Landroid/support/v4/app/FragmentState;->DW:I

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/Fragment;->j6(ILandroid/support/v4/app/Fragment;)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->FH:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->J8:Z

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->QX:Z

    iget p3, p0, Landroid/support/v4/app/FragmentState;->Hw:I

    iput p3, p2, Landroid/support/v4/app/Fragment;->rN:I

    iget p3, p0, Landroid/support/v4/app/FragmentState;->v5:I

    iput p3, p2, Landroid/support/v4/app/Fragment;->er:I

    iget-object p3, p0, Landroid/support/v4/app/FragmentState;->Zo:Ljava/lang/String;

    iput-object p3, p2, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->VH:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->vy:Z

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->gn:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->BT:Z

    iget-boolean p3, p0, Landroid/support/v4/app/FragmentState;->tp:Z

    iput-boolean p3, p2, Landroid/support/v4/app/Fragment;->gW:Z

    iget-object p1, p1, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object p1, p2, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    sget-boolean p1, Landroid/support/v4/app/x;->j6:Z

    if-eqz p1, :cond_81

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instantiated fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    iget-object p1, p0, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    iput-object p4, p1, Landroid/support/v4/app/Fragment;->a8:Landroid/support/v4/app/y;

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/FragmentState;->DW:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->FH:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/FragmentState;->Hw:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/support/v4/app/FragmentState;->v5:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->Zo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->VH:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->gn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->u7:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->tp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
