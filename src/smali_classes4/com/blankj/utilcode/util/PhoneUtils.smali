.class public final Lcom/blankj/utilcode/util/PhoneUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static call(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static dial(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getDialIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, ""

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object v0, v1

    goto :goto_a

    :cond_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_a

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    move-object v0, v1

    goto :goto_a

    :cond_2d
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v0, v1

    goto :goto_a
.end method

.method public static getIMEI()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getImeiOrMeid(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSI()Ljava/lang/String;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_d

    :try_start_6
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_d} :catch_16

    :cond_d
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const-string v0, ""

    goto :goto_15
.end method

.method public static getImeiOrMeid(Z)Ljava/lang/String;
    .registers 13

    const/4 v4, 0x2

    const/16 v11, 0xf

    const/16 v10, 0xe

    const/4 v2, 0x1

    const/4 v6, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_12

    const-string v0, ""

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_38

    if-eqz p0, :cond_2b

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_2b
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_d0

    if-eqz p0, :cond_5e

    const-string v0, "ril.gsm.imei"

    :goto_42
    invoke-static {v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v4, :cond_61

    aget-object v1, v0, v6

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_5e
    const-string v0, "ril.cdma.meid"

    goto :goto_42

    :cond_61
    aget-object v0, v0, v6

    goto :goto_11

    :cond_64
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :try_start_68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getDeviceId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz p0, :cond_a9

    move v0, v2

    :goto_7d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_68 .. :try_end_8d} :catch_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_8d} :catch_b2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_68 .. :try_end_8d} :catch_ab

    move-object v2, v0

    :goto_8e
    if-eqz p0, :cond_bc

    if-eqz v3, :cond_ee

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v11, :cond_ee

    const-string v3, ""

    move-object v0, v3

    :goto_9b
    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v11, :cond_ce

    :cond_a3
    :goto_a3
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    :cond_a9
    move v0, v4

    goto :goto_7d

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    :goto_af
    const-string v2, ""

    goto :goto_8e

    :catch_b2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_af

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_af

    :cond_bc
    if-eqz v3, :cond_ec

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v10, :cond_ec

    const-string v0, ""

    :goto_c6
    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v10, :cond_a3

    :cond_ce
    move-object v1, v2

    goto :goto_a3

    :cond_d0
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_e2

    if-eqz v0, :cond_de

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v11, :cond_11

    :cond_de
    const-string v0, ""

    goto/16 :goto_11

    :cond_e2
    if-eqz v0, :cond_de

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v10, :cond_de

    goto/16 :goto_11

    :cond_ec
    move-object v0, v3

    goto :goto_c6

    :cond_ee
    move-object v0, v3

    goto :goto_9b
.end method

.method public static getMEID()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getImeiOrMeid(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    const-string p0, ""

    :cond_e
    :goto_e
    return-object p0

    :cond_f
    if-nez v0, :cond_1b

    if-nez v1, :cond_1b

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    move-object p0, p1

    goto :goto_e

    :cond_1b
    if-eqz v0, :cond_e

    move-object p0, p1

    goto :goto_e
.end method

.method public static getPhoneType()I
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_12

    :try_start_6
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const-string v0, ""

    goto :goto_a

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1d

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_1d
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_a
.end method

.method public static getSimOperatorByMnc()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2f60c77

    if-eq v2, v3, :cond_8a

    const v3, 0x2f60c8e

    if-eq v2, v3, :cond_7f

    const v3, 0x2f60cac

    if-eq v2, v3, :cond_75

    packed-switch v2, :pswitch_data_9c

    packed-switch v2, :pswitch_data_a8

    :cond_27
    :goto_27
    packed-switch v1, :pswitch_data_b2

    goto :goto_c

    :pswitch_2b  #0x0, 0x1, 0x2, 0x3
    const-string v0, "中国移动"

    goto :goto_c

    :pswitch_2e  #0x2f60c75
    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x2

    goto :goto_27

    :pswitch_38  #0x2f60c74
    const-string v2, "46006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x5

    goto :goto_27

    :pswitch_42  #0x2f60c73
    const-string v2, "46005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v1, 0x8

    goto :goto_27

    :pswitch_4d  #0x2f60c71
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x7

    goto :goto_27

    :pswitch_57  #0x2f60c70
    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    goto :goto_27

    :pswitch_61  #0x2f60c6f
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x4

    goto :goto_27

    :pswitch_6b  #0x2f60c6e
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x0

    goto :goto_27

    :cond_75
    const-string v2, "46020"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x3

    goto :goto_27

    :cond_7f
    const-string v2, "46011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v1, 0x9

    goto :goto_27

    :cond_8a
    const-string v2, "46009"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x6

    goto :goto_27

    :pswitch_94  #0x7, 0x8, 0x9
    const-string v0, "中国电信"

    goto/16 :goto_c

    :pswitch_98  #0x4, 0x5, 0x6
    const-string v0, "中国联通"

    goto/16 :goto_c

    :pswitch_data_9c
    .packed-switch 0x2f60c6e
        :pswitch_6b  #02f60c6e
        :pswitch_61  #02f60c6f
        :pswitch_57  #02f60c70
        :pswitch_4d  #02f60c71
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x2f60c73
        :pswitch_42  #02f60c73
        :pswitch_38  #02f60c74
        :pswitch_2e  #02f60c75
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_2b  #00000001
        :pswitch_2b  #00000002
        :pswitch_2b  #00000003
        :pswitch_98  #00000004
        :pswitch_98  #00000005
        :pswitch_98  #00000006
        :pswitch_94  #00000007
        :pswitch_94  #00000008
        :pswitch_94  #00000009
    .end packed-switch
.end method

.method public static getSimOperatorName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    const-string v0, ""

    goto :goto_2a
.end method

.method private static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static isPhone()Z
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isSimCardReady()Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
