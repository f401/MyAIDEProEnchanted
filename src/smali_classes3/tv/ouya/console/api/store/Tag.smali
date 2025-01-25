.class public Ltv/ouya/console/api/store/Tag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltv/ouya/console/api/store/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public DW:Ljava/lang/Boolean;

.field private FH:Ljava/lang/String;

.field private j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ltv/ouya/console/api/store/d;

    invoke-direct {v0}, Ltv/ouya/console/api/store/d;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/store/Tag;->j6:Ljava/lang/String;

    iput-object p2, p0, Ltv/ouya/console/api/store/Tag;->DW:Ljava/lang/Boolean;

    iput-object p3, p0, Ltv/ouya/console/api/store/Tag;->FH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ltv/ouya/console/api/store/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ltv/ouya/console/api/store/Tag;

    iget-object v1, p0, Ltv/ouya/console/api/store/Tag;->j6:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/Tag;->j6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Ltv/ouya/console/api/store/Tag;->FH:Ljava/lang/String;

    iget-object p1, p1, Ltv/ouya/console/api/store/Tag;->FH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ltv/ouya/console/api/store/Tag;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltv/ouya/console/api/store/Tag;->DW:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltv/ouya/console/api/store/Tag;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Ltv/ouya/console/api/store/Tag;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltv/ouya/console/api/store/Tag;->DW:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ltv/ouya/console/api/store/Tag;->FH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
