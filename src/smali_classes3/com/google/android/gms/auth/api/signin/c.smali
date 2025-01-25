.class public final Lcom/google/android/gms/auth/api/signin/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 15

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_5a

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v2

    packed-switch v2, :pswitch_data_64

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_24  #0x9
    sget-object v2, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->FH(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_f

    :pswitch_2b  #0x8
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    :pswitch_30  #0x7
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :pswitch_35  #0x6
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_f

    :pswitch_3a  #0x5
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_f

    :pswitch_3f  #0x4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_f

    :pswitch_44  #0x3
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/accounts/Account;

    goto :goto_f

    :pswitch_4e  #0x2
    sget-object v2, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->FH(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_f

    :pswitch_55  #0x1
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_f

    :cond_5a
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_4e  #00000002
        :pswitch_44  #00000003
        :pswitch_3f  #00000004
        :pswitch_3a  #00000005
        :pswitch_35  #00000006
        :pswitch_30  #00000007
        :pswitch_2b  #00000008
        :pswitch_24  #00000009
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-object p1
.end method
