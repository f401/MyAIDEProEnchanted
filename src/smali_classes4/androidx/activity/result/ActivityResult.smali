.class public final Landroidx/activity/result/ActivityResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/activity/result/ActivityResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:Landroid/content/Intent;

.field private final mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/activity/result/ActivityResult$1;

    invoke-direct {v0}, Landroidx/activity/result/ActivityResult$1;-><init>()V

    sput-object v0, Landroidx/activity/result/ActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    iput-object p2, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    return-void

    :cond_13
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_10
.end method

.method public static resultCodeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    if-eqz p0, :cond_a

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "RESULT_CANCELED"

    goto :goto_9

    :cond_d
    const-string v0, "RESULT_OK"

    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    iget v0, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityResult{resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    invoke-static {v1}, Landroidx/activity/result/ActivityResult;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroidx/activity/result/ActivityResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x1

    goto :goto_a
.end method
