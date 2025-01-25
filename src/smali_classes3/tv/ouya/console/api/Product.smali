.class public Ltv/ouya/console/api/Product;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltv/ouya/console/api/Product;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:I

.field private Hw:D

.field private VH:D

.field private Zo:D

.field private gn:Ljava/lang/String;

.field private j6:Ljava/lang/String;

.field private tp:I

.field private u7:Ljava/lang/String;

.field private v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ltv/ouya/console/api/l;

    invoke-direct {v0}, Ltv/ouya/console/api/l;-><init>()V

    sput-object v0, Ltv/ouya/console/api/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Ltv/ouya/console/api/Product;->tp:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Ltv/ouya/console/api/Product;->tp:I

    iput-object p1, p0, Ltv/ouya/console/api/Product;->j6:Ljava/lang/String;

    iput-object p2, p0, Ltv/ouya/console/api/Product;->DW:Ljava/lang/String;

    iput p3, p0, Ltv/ouya/console/api/Product;->FH:I

    iput-wide p4, p0, Ltv/ouya/console/api/Product;->Hw:D

    iput-object p6, p0, Ltv/ouya/console/api/Product;->v5:Ljava/lang/String;

    iput-wide p7, p0, Ltv/ouya/console/api/Product;->Zo:D

    iput-wide p9, p0, Ltv/ouya/console/api/Product;->VH:D

    iput-object p11, p0, Ltv/ouya/console/api/Product;->gn:Ljava/lang/String;

    iput-object p12, p0, Ltv/ouya/console/api/Product;->u7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ltv/ouya/console/api/Product;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ltv/ouya/console/api/Product;

    iget v1, p0, Ltv/ouya/console/api/Product;->FH:I

    iget v3, p1, Ltv/ouya/console/api/Product;->FH:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Ltv/ouya/console/api/Product;->DW:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/Product;->DW:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Ltv/ouya/console/api/Product;->j6:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/Product;->j6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-wide v3, p0, Ltv/ouya/console/api/Product;->Hw:D

    iget-wide v5, p1, Ltv/ouya/console/api/Product;->Hw:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Ltv/ouya/console/api/Product;->v5:Ljava/lang/String;

    if-eqz v1, :cond_3f

    iget-object v3, p1, Ltv/ouya/console/api/Product;->v5:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-wide v3, p0, Ltv/ouya/console/api/Product;->Zo:D

    iget-wide v5, p1, Ltv/ouya/console/api/Product;->Zo:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_48

    return v2

    :cond_48
    iget-wide v3, p0, Ltv/ouya/console/api/Product;->VH:D

    iget-wide v5, p1, Ltv/ouya/console/api/Product;->VH:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Ltv/ouya/console/api/Product;->gn:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/Product;->gn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Ltv/ouya/console/api/Product;->u7:Ljava/lang/String;

    iget-object p1, p1, Ltv/ouya/console/api/Product;->u7:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    return v2

    :cond_67
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Ltv/ouya/console/api/Product;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltv/ouya/console/api/Product;->DW:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltv/ouya/console/api/Product;->FH:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ltv/ouya/console/api/Product;->Hw:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ltv/ouya/console/api/Product;->v5:Ljava/lang/String;

    if-eqz v1, :cond_2c

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Ltv/ouya/console/api/Product;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltv/ouya/console/api/Product;->DW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Ltv/ouya/console/api/Product;->FH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Ltv/ouya/console/api/Product;->tp:I

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1e

    iget-wide v0, p0, Ltv/ouya/console/api/Product;->Hw:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Ltv/ouya/console/api/Product;->v5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1e
    iget p2, p0, Ltv/ouya/console/api/Product;->tp:I

    const/4 v0, 0x3

    if-lt p2, v0, :cond_2d

    iget-wide v0, p0, Ltv/ouya/console/api/Product;->Zo:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Ltv/ouya/console/api/Product;->VH:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_2d
    iget p2, p0, Ltv/ouya/console/api/Product;->tp:I

    const/4 v0, 0x4

    if-lt p2, v0, :cond_37

    iget-object p2, p0, Ltv/ouya/console/api/Product;->gn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_37
    iget p2, p0, Ltv/ouya/console/api/Product;->tp:I

    const/4 v0, 0x5

    if-lt p2, v0, :cond_41

    iget-object p2, p0, Ltv/ouya/console/api/Product;->u7:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_41
    return-void
.end method
