.class public final Lcom/google/android/gms/measurement/internal/zzfy;
.super Lcom/google/android/gms/measurement/internal/zzcs;


# static fields
.field private static final zzauo:[Ljava/lang/String;


# instance fields
.field private zzado:I

.field private zzaup:Ljava/security/SecureRandom;

.field private final zzauq:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzaur:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "firebase_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "google_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ga_"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzauo:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaur:Ljava/lang/Integer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzauq:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_a} :catch_d

    if-eqz v1, :cond_e

    return-object v1

    :catch_d
    move-exception v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zza(ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_79

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_d

    goto :goto_79

    :cond_d
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1d
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_2d

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2d
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_3d

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3d
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4c

    const-wide/16 p0, 0x1

    goto :goto_4e

    :cond_4c
    const-wide/16 p0, 0x0

    :goto_4e
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_53
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_62

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_62
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_70

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_70

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6f

    goto :goto_70

    :cond_6f
    return-object v0

    :cond_70
    :goto_70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_79
    :goto_79
    return-object p1
.end method

.method public static zza(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p1, :cond_25

    if-eqz p2, :cond_24

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    return-object v0

    :cond_25
    return-object p0
.end method

.method private static zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1b

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_d

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "_el"

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1b
    return-void
.end method

.method static zza(Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_10

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    :goto_b
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    goto :goto_b
.end method

.method private static zza(Landroid/os/Bundle;I)Z
    .registers 8

    const-string v0, "_err"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_12

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z
    .registers 9

    const/4 v0, 0x1

    if-nez p4, :cond_4

    return v0

    :cond_4
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_b0

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_b0

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_b0

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_b0

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_b0

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_b0

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_22

    goto/16 :goto_b0

    :cond_22
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_8c

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_8c

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_30

    goto :goto_8c

    :cond_30
    instance-of p1, p4, Landroid/os/Bundle;

    if-eqz p1, :cond_37

    if-eqz p5, :cond_37

    return v0

    :cond_37
    instance-of p1, p4, [Landroid/os/Parcelable;

    if-eqz p1, :cond_5f

    if-eqz p5, :cond_5f

    check-cast p4, [Landroid/os/Parcelable;

    array-length p1, p4

    const/4 p3, 0x0

    :goto_41
    if-ge p3, p1, :cond_5e

    aget-object p5, p4, p3

    instance-of v1, p5, Landroid/os/Bundle;

    if-nez v1, :cond_5b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p3, "All Parcelable[] elements must be of type Bundle. Value type, name"

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_5b
    add-int/lit8 p3, p3, 0x1

    goto :goto_41

    :cond_5e
    return v0

    :cond_5f
    instance-of p1, p4, Ljava/util/ArrayList;

    if-eqz p1, :cond_8b

    if-eqz p5, :cond_8b

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x0

    :cond_6c
    if-ge p3, p1, :cond_8a

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p3, p3, 0x1

    instance-of v1, p5, Landroid/os/Bundle;

    if-nez v1, :cond_6c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p3, "All ArrayList elements must be of type Bundle. Value type, name"

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_8a
    return v0

    :cond_8b
    return v2

    :cond_8c
    :goto_8c
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p4, v2, p5}, Ljava/lang/String;->codePointCount(II)I

    move-result p5

    if-le p5, p3, :cond_b0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "Value is too long; discarded. Value kind, name, value length"

    invoke-virtual {p3, p5, p1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_b0
    :goto_b0
    return v0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_16

    if-nez v1, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return v2

    :cond_15
    return v3

    :cond_16
    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v3

    :cond_2e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    return v2

    :cond_35
    return v3

    :cond_36
    if-nez v0, :cond_50

    if-eqz v1, :cond_50

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_41

    return v3

    :cond_41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4f

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_4f

    :cond_4e
    return v3

    :cond_4f
    :goto_4f
    return v2

    :cond_50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5e

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_5e

    :cond_5d
    return v3

    :cond_5e
    :goto_5e
    return v2
.end method

.method static zza(Landroid/os/Parcelable;)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_9
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_14
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static zzc(JJ)J
    .registers 6

    const-wide/32 v0, 0xea60

    mul-long p2, p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    div-long/2addr p0, p2

    return-wide p0
.end method

.method static zzc([B)J
    .registers 10

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    array-length v0, p0

    sub-int/2addr v0, v1

    const-wide/16 v3, 0x0

    :goto_12
    if-ltz v0, :cond_26

    array-length v1, p0

    add-int/lit8 v1, v1, -0x8

    if-lt v0, v1, :cond_26

    aget-byte v1, p0, v0

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_26
    return-wide v3
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_19

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p0

    :cond_1a
    return v0
.end method

.method static zzc(Landroid/content/Intent;)Z
    .registers 2

    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "https://www.google.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android-app://com.google.appcrawler"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method static zzct(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_16

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method private static zzcw(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zzcx(Ljava/lang/String;)I
    .registers 2

    const-string v0, "_ldl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x800

    return p0

    :cond_b
    const-string v0, "_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x100

    return p0

    :cond_16
    const/16 p0, 0x24

    return p0
.end method

.method static zzcy(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static zzd(Ljava/util/List;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfv;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_22
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    if-eqz v2, :cond_30

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    :cond_30
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    if-eqz v2, :cond_c

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_c

    :cond_3e
    return-object v0
.end method

.method private final zze(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    const/16 v1, 0x40

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_59

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_59

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_59

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3e
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_3e} :catch_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_3e} :catch_3f

    return p1

    :catch_3f
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Package name not found"

    goto :goto_56

    :catch_4b
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    :goto_56
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_59
    const/4 p1, 0x1

    return p1
.end method

.method public static zzf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    if-nez p0, :cond_8

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_34

    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_15

    :cond_34
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    check-cast v2, [Landroid/os/Parcelable;

    :goto_3b
    array-length v1, v2

    if-ge v3, v1, :cond_15

    aget-object v1, v2, v3

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_4f

    new-instance v1, Landroid/os/Bundle;

    aget-object v4, v2, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v1, v2, v3

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_52
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_15

    check-cast v2, Ljava/util/List;

    :goto_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_15

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_70

    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_73
    return-object v0
.end method

.method static zzf(Ljava/lang/Object;)[Landroid/os/Bundle;
    .registers 3

    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    check-cast p0, Landroid/os/Bundle;

    aput-object p0, v0, v1

    return-object v0

    :cond_d
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1d

    check-cast p0, [Landroid/os/Parcelable;

    array-length v0, p0

    const-class v1, [Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_1d
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_1a

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzt(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_25
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_41

    if-eq v1, v3, :cond_41

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_49
    if-ge v1, v2, :cond_6b

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_65

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_65
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_49

    :cond_6b
    const/4 p1, 0x1

    return p1
.end method

.method static zzv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_8} :catch_c0

    const-string v2, "gclid"

    if-eqz v1, :cond_23

    :try_start_c
    const-string v1, "utm_campaign"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "utm_source"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utm_medium"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_22} :catch_c0

    goto :goto_27

    :cond_23
    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    goto :goto_41

    :cond_40
    return-object v0

    :cond_41
    :goto_41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    const-string v6, "campaign"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "source"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "medium"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    const-string v1, "utm_term"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "term"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    const-string v1, "utm_content"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    const-string v1, "aclid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    const-string v1, "cp1"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    const-string v1, "anid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bf

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    return-object v0

    :catch_c0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    if-eqz v7, :cond_16a

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_168

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const/4 v0, 0x3

    const/16 v15, 0x28

    if-eqz v8, :cond_2f

    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    :cond_2f
    const/16 v1, 0xe

    const-string v2, "event param"

    if-eqz p5, :cond_4d

    invoke-virtual {v6, v2, v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_4b

    :cond_3c
    invoke-virtual {v6, v2, v9, v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    const/16 v3, 0xe

    goto :goto_4e

    :cond_45
    invoke-virtual {v6, v2, v15, v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    :goto_4b
    const/4 v3, 0x3

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    if-nez v3, :cond_68

    invoke-direct {v6, v2, v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zzt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    goto :goto_64

    :cond_57
    invoke-virtual {v6, v2, v9, v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto :goto_69

    :cond_5e
    invoke-virtual {v6, v2, v15, v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    :goto_64
    const/4 v1, 0x3

    goto :goto_69

    :cond_66
    const/4 v1, 0x0

    goto :goto_69

    :cond_68
    move v1, v3

    :goto_69
    const-string v5, "_ev"

    const/4 v4, 0x1

    if-eqz v1, :cond_85

    invoke-static {v10, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;I)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static {v14, v15, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_80

    invoke-static {v10, v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_80
    :goto_80
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_122

    :cond_85
    invoke-virtual {v7, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzaf()V

    if-eqz p6, :cond_c3

    instance-of v0, v3, [Landroid/os/Parcelable;

    if-eqz v0, :cond_97

    move-object v0, v3

    check-cast v0, [Landroid/os/Parcelable;

    array-length v0, v0

    goto :goto_a2

    :cond_97
    instance-of v0, v3, Ljava/util/ArrayList;

    if-eqz v0, :cond_bb

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a2
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_bb

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "param"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "Parameter array is too long; discarded. Value kind, name, array length"

    invoke-virtual {v1, v4, v2, v14, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_bc

    :cond_bb
    const/4 v0, 0x1

    :goto_bc
    if-nez v0, :cond_c3

    const/16 v0, 0x11

    move-object v12, v5

    const/4 v9, 0x1

    goto :goto_104

    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzav(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_db

    :cond_d5
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    :cond_db
    const-string v1, "param"

    const/16 v16, 0x100

    move-object/from16 v0, p0

    move-object v2, v14

    move-object/from16 v17, v3

    move/from16 v3, v16

    const/4 v9, 0x1

    move-object/from16 v4, v17

    move-object v12, v5

    :goto_ea
    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result v0

    goto :goto_ff

    :cond_f1
    move-object/from16 v17, v3

    move-object v12, v5

    const/4 v9, 0x1

    const-string v1, "param"

    const/16 v3, 0x64

    move-object/from16 v0, p0

    move-object v2, v14

    move-object/from16 v4, v17

    goto :goto_ea

    :goto_ff
    if-eqz v0, :cond_103

    const/4 v0, 0x0

    goto :goto_104

    :cond_103
    const/4 v0, 0x4

    :goto_104
    if-eqz v0, :cond_125

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_125

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    goto/16 :goto_80

    :cond_122
    :goto_122
    move-object/from16 v3, p2

    goto :goto_165

    :cond_125
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzfy;->zzct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    add-int/lit8 v13, v13, 0x1

    const/16 v0, 0x19

    if-le v13, v0, :cond_122

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Event can\'t contain more than 25 params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;I)Z

    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_165
    const/4 v9, 0x0

    goto/16 :goto_17

    :cond_168
    move-object v9, v10

    goto :goto_16b

    :cond_16a
    const/4 v9, 0x0

    :goto_16b
    return-object v9
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzag;
    .registers 21

    move-object v7, p0

    move-object v8, p2

    move-object v0, p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcu(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4a

    if-eqz v0, :cond_1a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v1

    goto :goto_20

    :cond_1a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    :goto_20
    const-string v0, "_o"

    move-object/from16 v9, p4

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-static {v0}, Lcom/google/android/gms/common/util/f;->j6(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Landroid/os/Bundle;)V

    move-object v0, v10

    move-object v1, p2

    move-object v2, v11

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;J)V

    return-object v10

    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid conditional property event name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final zza(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method final zza(Landroid/os/Bundle;J)V
    .registers 10

    const-string v0, "_et"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    const-string v4, "Params already contained engagement"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method final zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_11

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_11
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_2b
    if-eqz p2, :cond_4e

    if-eqz p3, :cond_38

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjl()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/h;I)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/h;->J0(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/h;J)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/h;->J0(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/h;Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/h;->J0(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/h;[B)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/h;->J0(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;I)Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzalg:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_27

    :cond_21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    :goto_27
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/4 p1, 0x6

    if-eq p2, p1, :cond_33

    const/4 p1, 0x7

    if-eq p2, p1, :cond_33

    const/4 p1, 0x2

    if-ne p2, p1, :cond_39

    :cond_33
    const-string p1, "_el"

    int-to-long p2, p5

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object p1

    const-string p2, "auto"

    const-string p3, "_err"

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p3, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_11
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfy;->zzauo:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    const/4 v4, 0x1

    if-ge v3, v2, :cond_28

    aget-object v5, v1, v3

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v1, 0x1

    goto :goto_29

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_28
    const/4 v1, 0x0

    :goto_29
    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Name starts with reserved prefix. Type, name"

    invoke-virtual {p2, v1, p1, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_39
    if-eqz p2, :cond_60

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v1, :cond_4f

    aget-object v3, p2, v2

    invoke-static {p3, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const/4 p2, 0x1

    goto :goto_50

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_4f
    const/4 p2, 0x0

    :goto_50
    if-eqz p2, :cond_60

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Name is reserved. Type, name"

    invoke-virtual {p2, v1, p1, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_60
    return v4
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/h;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/h;->J0(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method final zzcu(Ljava/lang/String;)I
    .registers 5

    const-string v0, "event"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_a

    return v2

    :cond_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzcu;->zzaqq:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 p1, 0xd

    return p1

    :cond_15
    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method final zzcv(Ljava/lang/String;)I
    .registers 5

    const-string v0, "user property"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_a

    return v2

    :cond_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzcw;->zzaqu:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 p1, 0xf

    return p1

    :cond_15
    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method final zzcz(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzd(Landroid/content/Context;Ljava/lang/String;)J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzaf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfy;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Could not get MD5 instance"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_63

    :cond_21
    if-eqz v0, :cond_74

    :try_start_23
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zze(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_74

    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_56

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_56

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc([B)J

    move-result-wide p1

    goto :goto_76

    :cond_56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Could not get signatures"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_63} :catch_66

    :goto_63
    const-wide/16 p1, -0x1

    goto :goto_76

    :catch_66
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_74
    const-wide/16 p1, 0x0

    :goto_76
    return-wide p1
.end method

.method final zze(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_3b
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_3f
    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgz()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzaf()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_27

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzauq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method final zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "_ev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    :goto_b
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcy(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/16 v1, 0x64

    :goto_19
    const/4 p1, 0x0

    goto :goto_b
.end method

.method final zzi(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 10

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v2, "user property referrer"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcx(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result p1

    goto :goto_25

    :cond_17
    const-string v1, "user property"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcx(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result p1

    :goto_25
    if-eqz p1, :cond_29

    const/4 p1, 0x0

    return p1

    :cond_29
    const/4 p1, 0x7

    return p1
.end method

.method final zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcx(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final zzmj()J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzauq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzauq:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    if-nez v4, :cond_32

    :try_start_f
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzado:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzado:I

    int-to-long v3, v3

    monitor-exit v0

    add-long/2addr v1, v3

    return-wide v1

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v1

    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzauq:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzauq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_43

    throw v1
.end method

.method final zzmk()Ljava/security/SecureRandom;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaup:Ljava/security/SecureRandom;

    if-nez v0, :cond_e

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaup:Ljava/security/SecureRandom;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaup:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public final zzml()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaur:Ljava/lang/Integer;

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/android/gms/common/c;->j6()Lcom/google/android/gms/common/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaur:Ljava/lang/Integer;

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaur:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final zzmm()Ljava/lang/String;
    .registers 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzmk()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzs(I)I
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/c;->j6()Lcom/google/android/gms/common/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method final zzs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_25
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_3d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_45
    if-ge v1, v2, :cond_69

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_63

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_63
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_45

    :cond_69
    const/4 p1, 0x1

    return p1
.end method

.method final zzu(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcw(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkn()Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    return v1

    :cond_27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_47

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzcw(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Invalid admob_app_id. Analytics disabled."

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_45
    const/4 p1, 0x1

    return p1

    :cond_47
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkn()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_5c
    return v1
.end method

.method final zzx(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzaf()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
