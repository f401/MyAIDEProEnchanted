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
            "Landroid/os/Parcelable$Creator",
            "<",
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
            "Ljava/util/HashMap",
            "<",
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
            "Ljava/util/HashMap",
            "<",
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
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ltv/ouya/console/api/store/AppDescription;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Ltv/ouya/console/api/store/AppDescription;

    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_5
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_8
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_b
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-nez v2, :cond_c

    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    invoke-virtual {v2, v3}, Ltv/ouya/console/api/Product;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-eqz v2, :cond_f

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-nez v2, :cond_e

    :cond_10
    iget-wide v2, p0, Ltv/ouya/console/api/store/AppDescription;->Zo:D

    iget-wide v4, p1, Ltv/ouya/console/api/store/AppDescription;->Zo:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_0

    :cond_11
    iget v2, p0, Ltv/ouya/console/api/store/AppDescription;->VH:I

    iget v3, p1, Ltv/ouya/console/api/store/AppDescription;->VH:I

    if-eq v2, v3, :cond_12

    move v0, v1

    goto :goto_0

    :cond_12
    iget-boolean v2, p0, Ltv/ouya/console/api/store/AppDescription;->gn:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/store/AppDescription;->gn:Z

    if-eq v2, v3, :cond_13

    move v0, v1

    goto :goto_0

    :cond_13
    iget-boolean v2, p0, Ltv/ouya/console/api/store/AppDescription;->u7:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/store/AppDescription;->u7:Z

    if-eq v2, v3, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->EQ:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDescription;->EQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    iget-object v3, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDescription{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .registers 6

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->DW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->tp:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ltv/ouya/console/api/Product;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-wide v0, p0, Ltv/ouya/console/api/store/AppDescription;->Zo:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Ltv/ouya/console/api/store/AppDescription;->VH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDescription;->gn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDescription;->u7:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->EQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDescription;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    goto :goto_1
.end method
