.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final j6:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Landroid/app/PendingIntent;

.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->j6:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->DW:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->Hw:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->v5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static v5(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x63

    if-eq p0, v0, :cond_6c

    const/16 v0, 0x5dc

    if-eq p0, v0, :cond_69

    packed-switch p0, :pswitch_data_70

    packed-switch p0, :pswitch_data_8e

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_27  #0xb
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :pswitch_2a  #0xa
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_2d  #0x9
    const-string p0, "SERVICE_INVALID"

    return-object p0

    :pswitch_30  #0x8
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_33  #0x7
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_36  #0x6
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_39  #0x5
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_3c  #0x4
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_3f  #0x3
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_42  #0x2
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_45  #0x1
    const-string p0, "SERVICE_MISSING"

    return-object p0

    :pswitch_48  #0x0
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_4b  #0xffffffff
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_4e  #0x15
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_51  #0x14
    const-string p0, "RESTRICTED_PROFILE"

    return-object p0

    :pswitch_54  #0x13
    const-string p0, "SERVICE_MISSING_PERMISSION"

    return-object p0

    :pswitch_57  #0x12
    const-string p0, "SERVICE_UPDATING"

    return-object p0

    :pswitch_5a  #0x11
    const-string p0, "SIGN_IN_FAILED"

    return-object p0

    :pswitch_5d  #0x10
    const-string p0, "API_UNAVAILABLE"

    return-object p0

    :pswitch_60  #0xf
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_63  #0xe
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_66  #0xd
    const-string p0, "CANCELED"

    return-object p0

    :cond_69
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    return-object p0

    :cond_6c
    const-string p0, "UNFINISHED"

    return-object p0

    nop

    :pswitch_data_70
    .packed-switch -0x1
        :pswitch_4b  #ffffffff
        :pswitch_48  #00000000
        :pswitch_45  #00000001
        :pswitch_42  #00000002
        :pswitch_3f  #00000003
        :pswitch_3c  #00000004
        :pswitch_39  #00000005
        :pswitch_36  #00000006
        :pswitch_33  #00000007
        :pswitch_30  #00000008
        :pswitch_2d  #00000009
        :pswitch_2a  #0000000a
        :pswitch_27  #0000000b
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0xd
        :pswitch_66  #0000000d
        :pswitch_63  #0000000e
        :pswitch_60  #0000000f
        :pswitch_5d  #00000010
        :pswitch_5a  #00000011
        :pswitch_57  #00000012
        :pswitch_54  #00000013
        :pswitch_51  #00000014
        :pswitch_4e  #00000015
    .end packed-switch
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    return v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public final Hw()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->Hw:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final Zo()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    if-ne v1, v3, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->Hw:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->Hw:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->v5:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->v5:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->Hw:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->v5:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    invoke-static {v1}, Lcom/google/android/gms/common/ConnectionResult;->v5(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->Hw:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v5()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->FH:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->Hw:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->DW:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->Hw()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
