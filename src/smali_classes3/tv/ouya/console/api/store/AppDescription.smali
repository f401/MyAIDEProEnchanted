.class public Ltv/ouya/console/api/store/AppDescription;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/store/AppDescription$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltv/ouya/console/api/store/AppDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:[Ljava/lang/String;


# instance fields
.field private DW:Ljava/lang/String;

.field private EQ:Ljava/lang/String;

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$a;",
            ">;"
        }
    .end annotation
.end field

.field private VH:I

.field private Zo:D

.field private gn:Z

.field public tp:Ltv/ouya/console/api/Product;

.field private u7:Z

.field private v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unsubmitted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "submitted"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "under_review"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "approved"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "published"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rejected"

    aput-object v2, v0, v1

    sput-object v0, Ltv/ouya/console/api/store/AppDescription;->j6:[Ljava/lang/String;

    new-instance v0, Ltv/ouya/console/api/store/a;

    invoke-direct {v0}, Ltv/ouya/console/api/store/a;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/AppDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/Product;Ljava/util/HashMap;DIZZLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/Product;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/store/AppDescription$a;",
            ">;DIZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    iput-object p2, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    iput-object p3, p0, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    iput-object p5, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    iput-object p4, p0, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    iput-wide p6, p0, Ltv/ouya/console/api/store/AppDescription;->Zo:D

    iput p8, p0, Ltv/ouya/console/api/store/AppDescription;->VH:I

    iput-boolean p9, p0, Ltv/ouya/console/api/store/AppDescription;->gn:Z

    iput-boolean p10, p0, Ltv/ouya/console/api/store/AppDescription;->u7:Z

    iput-object p11, p0, Ltv/ouya/console/api/store/AppDescription;->EQ:Ljava/lang/String;

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
    instance-of v1, p1, Ltv/ouya/console/api/store/AppDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ltv/ouya/console/api/store/AppDescription;

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_1d

    :cond_19
    iget-object v1, p1, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    if-eqz v1, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_2f

    :cond_2b
    iget-object v1, p1, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    if-eqz v1, :cond_30

    :goto_2f
    return v2

    :cond_30
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    if-eqz v1, :cond_3d

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_41

    :cond_3d
    iget-object v1, p1, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    if-eqz v1, :cond_42

    :goto_41
    return v2

    :cond_42
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-nez v1, :cond_4b

    iget-object v1, p1, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-eqz v1, :cond_54

    return v2

    :cond_4b
    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    invoke-virtual {v1, v3}, Ltv/ouya/console/api/Product;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-eqz v1, :cond_61

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_65

    :cond_61
    iget-object v1, p1, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-eqz v1, :cond_66

    :goto_65
    return v2

    :cond_66
    iget-wide v3, p0, Ltv/ouya/console/api/store/AppDescription;->Zo:D

    iget-wide v5, p1, Ltv/ouya/console/api/store/AppDescription;->Zo:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_6f

    return v2

    :cond_6f
    iget v1, p0, Ltv/ouya/console/api/store/AppDescription;->VH:I

    iget v3, p1, Ltv/ouya/console/api/store/AppDescription;->VH:I

    if-eq v1, v3, :cond_76

    return v2

    :cond_76
    iget-boolean v1, p0, Ltv/ouya/console/api/store/AppDescription;->gn:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/store/AppDescription;->gn:Z

    if-eq v1, v3, :cond_7d

    return v2

    :cond_7d
    iget-boolean v1, p0, Ltv/ouya/console/api/store/AppDescription;->u7:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/store/AppDescription;->u7:Z

    if-eq v1, v3, :cond_84

    return v2

    :cond_84
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->EQ:Ljava/lang/String;

    if-eqz v1, :cond_91

    iget-object p1, p1, Ltv/ouya/console/api/store/AppDescription;->EQ:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    return v2

    :cond_91
    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    :cond_1d
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDescription{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", versions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1, p2}, Ltv/ouya/console/api/Product;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_20
    iget-object p2, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-nez p2, :cond_29

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_86

    :cond_29
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/ouya/console/api/store/AppDescription$a;

    invoke-virtual {v1}, Ltv/ouya/console/api/store/AppDescription$a;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/ouya/console/api/store/AppDescription$a;

    invoke-virtual {v1}, Ltv/ouya/console/api/store/AppDescription$a;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/ouya/console/api/store/AppDescription$a;

    invoke-virtual {v1}, Ltv/ouya/console/api/store/AppDescription$a;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/store/AppDescription$a;

    invoke-virtual {v0}, Ltv/ouya/console/api/store/AppDescription$a;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3a

    :cond_86
    :goto_86
    iget-wide v0, p0, Ltv/ouya/console/api/store/AppDescription;->Zo:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Ltv/ouya/console/api/store/AppDescription;->VH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltv/ouya/console/api/store/AppDescription;->gn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Ltv/ouya/console/api/store/AppDescription;->u7:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Ltv/ouya/console/api/store/AppDescription;->EQ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
