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
        "Landroid/os/Parcelable$Creator<",
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
    .registers 2

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/p;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/UserInfo;
    .registers 8

    new-instance v0, Ltv/ouya/console/api/UserInfo;

    invoke-direct {v0}, Ltv/ouya/console/api/UserInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/ouya/console/api/UserInfo;->DW(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/ouya/console/api/UserInfo;->FH(Ltv/ouya/console/api/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_33

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v0, v3}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;Ljava/util/Calendar;)Ljava/util/Calendar;

    invoke-static {v0}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    invoke-static {v0, v1}, Ltv/ouya/console/api/UserInfo;->j6(Ltv/ouya/console/api/UserInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-ne p1, v3, :cond_4f

    const/4 v2, 0x1

    :cond_4f
    invoke-static {v0, v2}, Ltv/ouya/console/api/UserInfo;->DW(Ltv/ouya/console/api/UserInfo;Z)Z

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/p;->newArray(I)[Ltv/ouya/console/api/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltv/ouya/console/api/UserInfo;
    .registers 2

    new-array p1, p1, [Ltv/ouya/console/api/UserInfo;

    return-object p1
.end method
