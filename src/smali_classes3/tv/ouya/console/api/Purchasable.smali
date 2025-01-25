.class public Ltv/ouya/console/api/Purchasable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltv/ouya/console/api/Purchasable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ltv/ouya/console/api/m;

    invoke-direct {v0}, Ltv/ouya/console/api/m;-><init>()V

    sput-object v0, Ltv/ouya/console/api/Purchasable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/Purchasable;->j6:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/Purchasable;->j6:Ljava/lang/String;

    iput-object p2, p0, Ltv/ouya/console/api/Purchasable;->DW:Ljava/lang/String;

    iput-object p3, p0, Ltv/ouya/console/api/Purchasable;->FH:Ljava/lang/String;

    iput-object p4, p0, Ltv/ouya/console/api/Purchasable;->Hw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Ltv/ouya/console/api/Purchasable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Ltv/ouya/console/api/Purchasable;

    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->j6:Ljava/lang/String;

    iget-object p1, p1, Ltv/ouya/console/api/Purchasable;->j6:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->DW:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->FH:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Ltv/ouya/console/api/Purchasable;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltv/ouya/console/api/Purchasable;->j6()Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Ltv/ouya/console/api/Purchasable;->DW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltv/ouya/console/api/Purchasable;->FH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltv/ouya/console/api/Purchasable;->Hw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_23

    :cond_1f
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_23
    return-void
.end method
