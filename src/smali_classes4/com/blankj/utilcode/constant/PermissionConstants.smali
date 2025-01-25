.class public final Lcom/blankj/utilcode/constant/PermissionConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/constant/PermissionConstants$PermissionGroup;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RECOGNITION:Ljava/lang/String; = "ACTIVITY_RECOGNITION"

.field public static final CALENDAR:Ljava/lang/String; = "CALENDAR"

.field public static final CAMERA:Ljava/lang/String; = "CAMERA"

.field public static final CONTACTS:Ljava/lang/String; = "CONTACTS"

.field private static final GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

.field private static final GROUP_CALENDAR:[Ljava/lang/String;

.field private static final GROUP_CAMERA:[Ljava/lang/String;

.field private static final GROUP_CONTACTS:[Ljava/lang/String;

.field private static final GROUP_LOCATION:[Ljava/lang/String;

.field private static final GROUP_MICROPHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE_BELOW_O:[Ljava/lang/String;

.field private static final GROUP_SENSORS:[Ljava/lang/String;

.field private static final GROUP_SMS:[Ljava/lang/String;

.field private static final GROUP_STORAGE:[Ljava/lang/String;

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final MICROPHONE:Ljava/lang/String; = "MICROPHONE"

.field public static final PHONE:Ljava/lang/String; = "PHONE"

.field public static final SENSORS:Ljava/lang/String; = "SENSORS"

.field public static final SMS:Ljava/lang/String; = "SMS"

.field public static final STORAGE:Ljava/lang/String; = "STORAGE"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v5

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v1, v0, v5

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v6

    const-string v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.USE_SIP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.ANSWER_PHONE_CALLS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v6

    const-string v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.USE_SIP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.BODY_SENSORS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v1, v0, v6

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v0, v7

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_7

    new-array v0, v2, [Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ac

    :cond_f
    :goto_f
    packed-switch v0, :pswitch_data_d6

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v2

    goto :goto_6

    :sswitch_17
    const-string v3, "CAMERA"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v0, v1

    goto :goto_f

    :sswitch_21
    const-string v3, "MICROPHONE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x4

    goto :goto_f

    :sswitch_2b
    const-string v3, "CALENDAR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v0, v2

    goto :goto_f

    :sswitch_35
    const-string v3, "CONTACTS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x2

    goto :goto_f

    :sswitch_3f
    const-string v3, "ACTIVITY_RECOGNITION"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v0, 0x9

    goto :goto_f

    :sswitch_4a
    const-string v3, "PHONE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x5

    goto :goto_f

    :sswitch_54
    const-string v3, "SMS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x7

    goto :goto_f

    :sswitch_5e
    const-string v3, "STORAGE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v0, 0x8

    goto :goto_f

    :sswitch_69
    const-string v3, "SENSORS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x6

    goto :goto_f

    :sswitch_73
    const-string v3, "LOCATION"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x3

    goto :goto_f

    :pswitch_7d  #0x9
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    goto :goto_6

    :pswitch_80  #0x8
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    goto :goto_6

    :pswitch_83  #0x7
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    goto :goto_6

    :pswitch_86  #0x6
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_8a  #0x5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_94

    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    goto/16 :goto_6

    :cond_94
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_98  #0x4
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_9c  #0x3
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_a0  #0x2
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_a4  #0x1
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_a8  #0x0
    sget-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    goto/16 :goto_6

    :sswitch_data_ac
    .sparse-switch
        -0x600a704b -> :sswitch_73
        -0x5f2a5027 -> :sswitch_69
        -0x458431a5 -> :sswitch_5e
        0x14139 -> :sswitch_54
        0x489454e -> :sswitch_4a
        0x8623667 -> :sswitch_3f
        0xcd35053 -> :sswitch_35
        0x2404eb3e -> :sswitch_2b
        0x6ea0852a -> :sswitch_21
        0x760cb725 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_a8  #00000000
        :pswitch_a4  #00000001
        :pswitch_a0  #00000002
        :pswitch_9c  #00000003
        :pswitch_98  #00000004
        :pswitch_8a  #00000005
        :pswitch_86  #00000006
        :pswitch_83  #00000007
        :pswitch_80  #00000008
        :pswitch_7d  #00000009
    .end packed-switch
.end method
