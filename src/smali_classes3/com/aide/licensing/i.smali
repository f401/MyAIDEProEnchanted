.class public Lcom/aide/licensing/i;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static final DW:Ljava/security/SecureRandom;
    .annotation runtime Labcd/ru;
        field = 0x290701956f47e5e0L
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/ru;
        field = 0x190c2243f3693e37L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x991a6ee9cd7243bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2ffa0947a1627880L  # -3.179035734507726E77

    :try_start_6
    const-class v3, Lcom/aide/licensing/i;

    const-wide v4, 0x45f36b3cd868bc30L  # 9.615772133339158E28

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/4 v3, 0x0

    sput-boolean v3, Lcom/aide/licensing/i;->j6:Z

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    sput-object v3, Lcom/aide/licensing/i;->DW:Ljava/security/SecureRandom;
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1cc4629cf08cb0b0L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Landroid/content/Context;)J
    .registers 12

    const/4 v0, 0x0

    const-wide v1, 0xaf1f7133d1e34c0L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/licensing/i;->FH(Landroid/content/Context;)[B

    move-result-object v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_50

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/4 v8, 0x1

    aget-byte v8, v3, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v4, v8

    const/4 v8, 0x2

    aget-byte v8, v3, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    or-long/2addr v4, v8

    const/4 v8, 0x3

    aget-byte v3, v3, v8

    int-to-long v8, v3

    and-long/2addr v6, v8

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    :try_start_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device ID long: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_50

    const-wide/32 v0, 0xfffffff

    and-long/2addr v0, v4

    return-wide v0

    :catchall_50
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_58

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v3
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3e7a1a459314a25L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x59f4fd8722966593L  # 2.22012667057784E125

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1d

    :cond_d
    if-nez p0, :cond_12

    const-string p0, ""

    return-object p0

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method private static FH(Landroid/content/Context;)[B
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x216b9ec3fbef73c5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x135711c9149b80dfL  # -2.6857052621586785E215

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_29

    :cond_d
    :try_start_d
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-static {p0}, Lcom/aide/licensing/i;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_22
    .catchall {:try_start_d .. :try_end_21} :catchall_29

    return-object p0

    :catch_22
    move-exception v3

    :try_start_23
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_31

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v3
.end method

.method private static Hw(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2fef3bee8fd65d3dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x51c6e2fec81faab3L  # -5.049693640009855E-86

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-boolean v3, Lcom/aide/licensing/i;->j6:Z

    if-eqz v3, :cond_16

    invoke-static {p0}, Lcom/aide/licensing/i;->v5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1a

    :cond_16
    invoke-static {p0}, Lcom/aide/licensing/i;->Zo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    :goto_1a
    return-object p0

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method private static Zo(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1acf6654f303ffL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x5b294dd7a9f46655L  # 1.4031966725395136E131

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_46

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18
    .catchall {:try_start_d .. :try_end_17} :catchall_46

    goto :goto_1b

    :catch_18
    move-exception v3

    const-string v3, "(default)"

    :goto_1b
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device ID string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1b .. :try_end_45} :catchall_46

    return-object v3

    :catchall_46
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_4e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v3
.end method

.method public static j6(Landroid/content/Context;)J
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1f1cdee6cfc28005L  # 8.214095607507511E-159

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/i;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/licensing/i;->DW:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    invoke-static {p0}, Lcom/aide/licensing/i;->DW(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1d

    const/16 p0, 0x20

    shl-long v2, v3, p0

    or-long/2addr v0, v2

    return-wide v0

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method static synthetic j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/aide/licensing/i;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;J)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/i;->FH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0xc53c8d97e9fccfdL

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-static {p0}, Lcom/aide/licensing/i;->DW(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_24

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    cmp-long p0, p1, v0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v1, :cond_39

    const-wide v2, 0xc53c8d97e9fccfdL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method private static v5(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x8b4adab8142d000L
    .end annotation

    const-string v0, ";"

    const-string v1, "(default)"

    const/4 v2, 0x0

    const-wide v3, -0xd0ed921043ab5ecL  # -4.684542623315588E245

    :try_start_a
    sget-boolean v5, Lcom/aide/licensing/i;->FH:Z

    if-eqz v5, :cond_11

    invoke-static {v3, v4, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_a7

    :cond_11
    :try_start_11
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_28
    .catchall {:try_start_11 .. :try_end_19} :catchall_a7

    :try_start_19
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e
    .catchall {:try_start_19 .. :try_end_1d} :catchall_a7

    goto :goto_20

    :catch_1e
    move-exception v6

    move-object v6, v1

    :goto_20
    :try_start_20
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_25
    .catchall {:try_start_20 .. :try_end_24} :catchall_a7

    goto :goto_2b

    :catch_25
    move-exception v5

    move-object v5, v1

    goto :goto_2b

    :catch_28
    move-exception v5

    move-object v5, v1

    move-object v6, v5

    :goto_2b
    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_36
    .catchall {:try_start_2b .. :try_end_35} :catchall_a7

    goto :goto_37

    :catch_36
    move-exception v7

    :goto_37
    :try_start_37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tel device id: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tel sim serial no: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "accounts: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_a7

    :try_start_62
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Lcom/aide/licensing/h;

    invoke-direct {v1}, Lcom/aide/licensing/h;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_75} :catch_8d
    .catchall {:try_start_62 .. :try_end_75} :catchall_a7

    const/4 v5, 0x0

    :goto_76
    if-ge v5, v1, :cond_8e

    aget-object v6, v0, v5

    :try_start_7a
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/aide/licensing/i;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_88} :catch_89
    .catchall {:try_start_7a .. :try_end_88} :catchall_a7

    goto :goto_8a

    :catch_89
    move-exception v6

    :goto_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    :catch_8d
    move-exception v0

    :cond_8e
    :try_start_8e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device ID string: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_8e .. :try_end_a6} :catchall_a7

    return-object v0

    :catchall_a7
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/i;->Hw:Z

    if-eqz v1, :cond_af

    invoke-static {v0, v3, v4, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_af
    goto :goto_b1

    :goto_b0
    throw v0

    :goto_b1
    goto :goto_b0
.end method
