.class public Ltv/ouya/console/api/UserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltv/ouya/console/api/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final j6:Ljava/text/DateFormat;


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private VH:Z

.field private Zo:I

.field private gn:Z

.field private v5:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ltv/ouya/console/api/p;

    invoke-direct {v0}, Ltv/ouya/console/api/p;-><init>()V

    sput-object v0, Ltv/ouya/console/api/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltv/ouya/console/api/UserInfo;->j6:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic DW(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->FH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic DW(Ltv/ouya/console/api/UserInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Ltv/ouya/console/api/UserInfo;->gn:Z

    return p1
.end method

.method static synthetic FH(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->Hw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6(Ltv/ouya/console/api/UserInfo;I)I
    .registers 2

    iput p1, p0, Ltv/ouya/console/api/UserInfo;->Zo:I

    return p1
.end method

.method static synthetic j6(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->DW:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6(Ltv/ouya/console/api/UserInfo;)Ljava/util/Calendar;
    .registers 1

    iget-object p0, p0, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic j6(Ltv/ouya/console/api/UserInfo;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic j6(Ltv/ouya/console/api/UserInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Ltv/ouya/console/api/UserInfo;->VH:Z

    return p1
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
    const/4 v1, 0x0

    if-eqz p1, :cond_69

    const-class v2, Ltv/ouya/console/api/UserInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_69

    :cond_10
    check-cast p1, Ltv/ouya/console/api/UserInfo;

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->FH:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Ltv/ouya/console/api/UserInfo;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_23

    :cond_1f
    iget-object v2, p1, Ltv/ouya/console/api/UserInfo;->FH:Ljava/lang/String;

    if-eqz v2, :cond_24

    :goto_23
    return v1

    :cond_24
    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v3, p1, Ltv/ouya/console/api/UserInfo;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_35

    :cond_31
    iget-object v2, p1, Ltv/ouya/console/api/UserInfo;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_36

    :goto_35
    return v1

    :cond_36
    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->DW:Ljava/lang/String;

    if-eqz v2, :cond_43

    iget-object v3, p1, Ltv/ouya/console/api/UserInfo;->DW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_47

    :cond_43
    iget-object v2, p1, Ltv/ouya/console/api/UserInfo;->DW:Ljava/lang/String;

    if-eqz v2, :cond_48

    :goto_47
    return v1

    :cond_48
    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    if-eqz v2, :cond_55

    iget-object v3, p1, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_59

    :cond_55
    iget-object v2, p1, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    if-eqz v2, :cond_5a

    :goto_59
    return v1

    :cond_5a
    iget-boolean v2, p0, Ltv/ouya/console/api/UserInfo;->VH:Z

    iget-boolean v3, p1, Ltv/ouya/console/api/UserInfo;->VH:Z

    if-eq v2, v3, :cond_61

    return v1

    :cond_61
    iget-boolean v2, p0, Ltv/ouya/console/api/UserInfo;->gn:Z

    iget-boolean p1, p1, Ltv/ouya/console/api/UserInfo;->gn:Z

    if-eq v2, p1, :cond_68

    return v1

    :cond_68
    return v0

    :cond_69
    :goto_69
    return v1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Ltv/ouya/console/api/UserInfo;->DW:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->FH:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Ltv/ouya/console/api/UserInfo;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    iget-object v4, p0, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/util/Calendar;->hashCode()I

    move-result v1

    :cond_27
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Ltv/ouya/console/api/UserInfo;->Zo:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltv/ouya/console/api/UserInfo;->VH:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltv/ouya/console/api/UserInfo;->gn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/ouya/console/api/UserInfo;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->FH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dateOfBirth=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltv/ouya/console/api/UserInfo;->Zo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", founder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltv/ouya/console/api/UserInfo;->VH:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emailOptOut=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltv/ouya/console/api/UserInfo;->gn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Ltv/ouya/console/api/UserInfo;->DW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltv/ouya/console/api/UserInfo;->FH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltv/ouya/console/api/UserInfo;->Hw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltv/ouya/console/api/UserInfo;->v5:Ljava/util/Calendar;

    if-nez p2, :cond_16

    const-wide/16 v0, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_1a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Ltv/ouya/console/api/UserInfo;->Zo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltv/ouya/console/api/UserInfo;->VH:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Ltv/ouya/console/api/UserInfo;->gn:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
