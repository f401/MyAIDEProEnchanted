.class public Lcom/google/android/gms/common/api/d;
.super Ljava/lang/Object;


# direct methods
.method public static j6(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_48

    :pswitch_3  #0x1, 0x9, 0xb, 0xc
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17  #0x12
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :pswitch_1a  #0x11
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_1d  #0x10
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_20  #0xf
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_23  #0xe
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_26  #0xd
    const-string p0, "ERROR"

    return-object p0

    :pswitch_29  #0xa
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_2c  #0x8
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_2f  #0x7
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_32  #0x6
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_35  #0x5
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_38  #0x4
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_3b  #0x3
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_3e  #0x2
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_41  #0x0
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_44  #0xffffffff
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_44  #ffffffff
        :pswitch_41  #00000000
        :pswitch_3  #00000001
        :pswitch_3e  #00000002
        :pswitch_3b  #00000003
        :pswitch_38  #00000004
        :pswitch_35  #00000005
        :pswitch_32  #00000006
        :pswitch_2f  #00000007
        :pswitch_2c  #00000008
        :pswitch_3  #00000009
        :pswitch_29  #0000000a
        :pswitch_3  #0000000b
        :pswitch_3  #0000000c
        :pswitch_26  #0000000d
        :pswitch_23  #0000000e
        :pswitch_20  #0000000f
        :pswitch_1d  #00000010
        :pswitch_1a  #00000011
        :pswitch_17  #00000012
    .end packed-switch
.end method
