.class public final Ltv/ouya/console/api/store/AppDetails;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltv/ouya/console/api/store/AppDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public DW:Ljava/lang/String;

.field public EQ:Ljava/lang/String;

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field public J0:Z

.field public J8:Ljava/lang/String;

.field public Mr:I

.field public QX:Z

.field public VH:Ljava/lang/String;

.field public Ws:Z

.field public XL:Ljava/lang/String;

.field public Zo:Ljava/lang/String;

.field public aM:Ltv/ouya/console/api/Product;

.field public gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j3:D

.field public j6:Ljava/lang/String;

.field public tp:Ljava/lang/String;

.field public u7:Ljava/lang/Long;

.field public v5:Ljava/lang/Long;

.field public we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ltv/ouya/console/api/store/b;

    invoke-direct {v0}, Ltv/ouya/console/api/store/b;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/AppDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->gn:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ltv/ouya/console/api/Product;DI)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/Product;",
            "DI)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->j6:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->DW:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->FH:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->Hw:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->v5:Ljava/lang/Long;

    move-object v1, p6

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->Zo:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->VH:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->gn:Ljava/util/List;

    move-object v1, p9

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->u7:Ljava/lang/Long;

    move-object v1, p10

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->tp:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->EQ:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->we:Ljava/lang/String;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Ltv/ouya/console/api/store/AppDetails;->J0:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->J8:Ljava/lang/String;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Ltv/ouya/console/api/store/AppDetails;->Ws:Z

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Ltv/ouya/console/api/store/AppDetails;->QX:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->XL:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Ltv/ouya/console/api/store/AppDetails;->aM:Ltv/ouya/console/api/Product;

    move-wide/from16 v1, p19

    iput-wide v1, v0, Ltv/ouya/console/api/store/AppDetails;->j3:D

    move/from16 v1, p21

    iput v1, v0, Ltv/ouya/console/api/store/AppDetails;->Mr:I

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
    instance-of v1, p1, Ltv/ouya/console/api/store/AppDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ltv/ouya/console/api/store/AppDetails;

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->DW:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->DW:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->FH:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->FH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->j6:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->j6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->Hw:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->v5:Ljava/lang/Long;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->v5:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->Zo:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->Zo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->VH:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->VH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->u7:Ljava/lang/Long;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->u7:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->tp:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->tp:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->EQ:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->EQ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->we:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->we:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-boolean v1, p0, Ltv/ouya/console/api/store/AppDetails;->J0:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/store/AppDetails;->J0:Z

    if-eq v1, v3, :cond_8c

    return v2

    :cond_8c
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->J8:Ljava/lang/String;

    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->J8:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    return v2

    :cond_97
    iget-boolean v1, p0, Ltv/ouya/console/api/store/AppDetails;->Ws:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/store/AppDetails;->Ws:Z

    if-eq v1, v3, :cond_9e

    return v2

    :cond_9e
    iget-boolean v1, p0, Ltv/ouya/console/api/store/AppDetails;->QX:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/store/AppDetails;->QX:Z

    if-eq v1, v3, :cond_a5

    return v2

    :cond_a5
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->XL:Ljava/lang/String;

    if-nez v1, :cond_ae

    iget-object v1, p1, Ltv/ouya/console/api/store/AppDetails;->XL:Ljava/lang/String;

    if-eqz v1, :cond_b7

    return v2

    :cond_ae
    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->XL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    return v2

    :cond_b7
    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->aM:Ltv/ouya/console/api/Product;

    if-nez v1, :cond_c0

    iget-object v1, p1, Ltv/ouya/console/api/store/AppDetails;->aM:Ltv/ouya/console/api/Product;

    if-eqz v1, :cond_c9

    return v2

    :cond_c0
    iget-object v3, p1, Ltv/ouya/console/api/store/AppDetails;->aM:Ltv/ouya/console/api/Product;

    invoke-virtual {v1, v3}, Ltv/ouya/console/api/Product;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c9

    return v2

    :cond_c9
    iget-wide v3, p0, Ltv/ouya/console/api/store/AppDetails;->j3:D

    iget-wide v5, p1, Ltv/ouya/console/api/store/AppDetails;->j3:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_d2

    return v2

    :cond_d2
    iget v1, p0, Ltv/ouya/console/api/store/AppDetails;->Mr:I

    iget p1, p1, Ltv/ouya/console/api/store/AppDetails;->Mr:I

    if-eq v1, p1, :cond_d9

    return v2

    :cond_d9
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->DW:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltv/ouya/console/api/store/AppDetails;->Hw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->DW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->v5:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->Zo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->VH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->gn:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->u7:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->tp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->EQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->we:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->J0:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->J8:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->Ws:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/ouya/console/api/store/AppDetails;->QX:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->XL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->aM:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_63

    const/4 v0, 0x1

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/ouya/console/api/store/AppDetails;->aM:Ltv/ouya/console/api/Product;

    if-eqz v0, :cond_6e

    invoke-virtual {v0, p1, p2}, Ltv/ouya/console/api/Product;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_6e
    iget-wide v0, p0, Ltv/ouya/console/api/store/AppDetails;->j3:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Ltv/ouya/console/api/store/AppDetails;->Mr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
