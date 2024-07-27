.class final Ltv/ouya/console/api/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ltv/ouya/console/api/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/p;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/UserInfo;
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ltv/ouya/console/api/UserInfo;

    invoke-direct {v3}, Ltv/ouya/console/api/UserInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltv/ouya/console/api/UserInfo;->DW(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltv/ouya/console/api/UserInfo;->FH(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v3, v0}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;Ljava/util/Calendar;)Ljava/util/Calendar;

    invoke-static {v3}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v3, v0}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-static {v3, v1}, Ltv/ouya/console/api/UserInfo;->DW(Ltv/ouya/console/api/UserInfo;Z)Z

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/p;->newArray(I)[Ltv/ouya/console/api/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/UserInfo;
    .registers 3

    new-array v0, p1, [Ltv/ouya/console/api/UserInfo;

    return-object v0
.end method
