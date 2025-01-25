.class public final Lcom/google/android/gms/measurement/internal/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/measurement/internal/zzo;",
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
    .registers 23

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v10, v2

    move-wide v15, v10

    move-wide/from16 v18, v15

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v13, v9

    move-object v14, v13

    move-object/from16 v17, v14

    move-object/from16 v20, v17

    const/4 v12, 0x0

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_7a

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v3

    packed-switch v3, :pswitch_data_84

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_18

    :pswitch_2d  #0xc
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/gms/measurement/internal/zzag;

    goto :goto_18

    :pswitch_38  #0xb
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v18

    goto :goto_18

    :pswitch_3d  #0xa
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/measurement/internal/zzag;

    goto :goto_18

    :pswitch_48  #0x9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v15

    goto :goto_18

    :pswitch_4d  #0x8
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzag;

    goto :goto_18

    :pswitch_57  #0x7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_18

    :pswitch_5c  #0x6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_18

    :pswitch_61  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v10

    goto :goto_18

    :pswitch_66  #0x4
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzfv;

    goto :goto_18

    :pswitch_70  #0x3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_18

    :pswitch_75  #0x2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    :cond_7a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzo;

    move-object v6, v0

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;JLcom/google/android/gms/measurement/internal/zzag;)V

    return-object v0

    :pswitch_data_84
    .packed-switch 0x2
        :pswitch_75  #00000002
        :pswitch_70  #00000003
        :pswitch_66  #00000004
        :pswitch_61  #00000005
        :pswitch_5c  #00000006
        :pswitch_57  #00000007
        :pswitch_4d  #00000008
        :pswitch_48  #00000009
        :pswitch_3d  #0000000a
        :pswitch_38  #0000000b
        :pswitch_2d  #0000000c
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/zzo;

    return-object p1
.end method
