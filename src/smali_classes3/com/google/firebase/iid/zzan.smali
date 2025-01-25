.class public final Lcom/google/firebase/iid/zzan;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ljava/lang/String;

.field private Hw:I

.field private final j6:Landroid/content/Context;

.field private v5:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/zzan;->v5:I

    iput-object p1, p0, Lcom/google/firebase/iid/zzan;->j6:Landroid/content/Context;

    return-void
.end method

.method private final j6(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzan;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to find package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseInstanceId"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public static j6(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->FH()Lcom/google/firebase/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/b;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->FH()Lcom/google/firebase/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/b;->j6()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object p0

    :cond_1c
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_28

    return-object v2

    :cond_28
    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    return-object v2

    :cond_32
    return-object p0
.end method

.method public static j6(Ljava/security/KeyPair;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    :try_start_8
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_12} :catch_25

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v1, 0x8

    const/16 v2, 0xb

    :try_start_20
    invoke-static {p0, v0, v1, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    const-string p0, "FirebaseInstanceId"

    const-string v0, "Unexpected error, device missing required algorithms"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private final v5()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzan;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzan;->j6(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/iid/zzan;->DW:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/iid/zzan;->FH:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzan;->DW:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/firebase/iid/zzan;->v5()V

    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/zzan;->DW:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzan;->FH:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/firebase/iid/zzan;->v5()V

    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/zzan;->FH:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Hw()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzan;->Hw:I

    if-nez v0, :cond_11

    const-string v0, "com.google.android.gms"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzan;->j6(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/firebase/iid/zzan;->Hw:I

    :cond_11
    iget v0, p0, Lcom/google/firebase/iid/zzan;->Hw:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6()I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzan;->v5:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_78

    if-eqz v0, :cond_7

    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/iid/zzan;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.permission.SEND"

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_22

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Google Play services missing or without correct permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_78

    monitor-exit p0

    return v3

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_45

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_45

    iput v2, p0, Lcom/google/firebase/iid/zzan;->v5:I
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_78

    monitor-exit p0

    return v2

    :cond_45
    :try_start_45
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    iput v1, p0, Lcom/google/firebase/iid/zzan;->v5:I
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_78

    monitor-exit p0

    return v1

    :cond_62
    :try_start_62
    const-string v0, "FirebaseInstanceId"

    const-string v3, "Failed to resolve IID implementation package, falling back"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v0

    if-eqz v0, :cond_72

    iput v1, p0, Lcom/google/firebase/iid/zzan;->v5:I

    goto :goto_74

    :cond_72
    iput v2, p0, Lcom/google/firebase/iid/zzan;->v5:I

    :goto_74
    iget v0, p0, Lcom/google/firebase/iid/zzan;->v5:I
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_78

    monitor-exit p0

    return v0

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method
