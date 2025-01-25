.class public Lcom/google/android/gms/internal/ads/Ax;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/Ax$a;
    }
.end annotation


# static fields
.field private static final j6:Ljava/lang/String; = "Ax"


# instance fields
.field protected DW:Landroid/content/Context;

.field private volatile EQ:Lcom/google/android/gms/internal/ads/br;

.field private FH:Ljava/util/concurrent/ExecutorService;

.field private Hw:Ldalvik/system/DexClassLoader;

.field private J0:Lcom/google/android/gms/internal/ads/cx;

.field private J8:Z

.field private QX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/hy;",
            ">;"
        }
    .end annotation
.end field

.field private volatile VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private Ws:Z

.field private XL:Z

.field private Zo:[B

.field private aM:Z

.field private volatile gn:Z

.field private j3:Z

.field private tp:Z

.field private u7:Ljava/util/concurrent/Future;

.field private v5:Lcom/google/android/gms/internal/ads/kx;

.field private we:Ljava/util/concurrent/Future;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ax;->gn:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->u7:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->EQ:Lcom/google/android/gms/internal/ads/br;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->we:Ljava/util/concurrent/Future;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ax;->J8:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ax;->Ws:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ax;->XL:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->aM:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ax;->j3:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ax;->tp:Z

    if-eqz v1, :cond_26

    move-object p1, v2

    :cond_26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ax;->QX:Ljava/util/Map;

    return-void
.end method

.method private static DW(ILcom/google/android/gms/internal/ads/br;)Z
    .registers 6

    const/4 v0, 0x4

    if-ge p0, v0, :cond_4b

    const/4 p0, 0x1

    if-nez p1, :cond_7

    return p0

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->nl:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/br;->er:Ljava/lang/String;

    if-eqz v0, :cond_25

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    return p0

    :cond_26
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ti:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/br;->WB:Lcom/google/android/gms/internal/ads/Et;

    if-eqz p1, :cond_4a

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Et;->FH:Ljava/lang/Long;

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4b

    :cond_4a
    return p0

    :cond_4b
    const/4 p0, 0x0

    return p0
.end method

.method private final DW(Ljava/io/File;Ljava/lang/String;)Z
    .registers 12

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    return v3

    :cond_1b
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_33

    return v3

    :cond_33
    const/4 p1, 0x0

    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_42

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    return v3

    :cond_42
    long-to-int v1, v5

    new-array v1, v1, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_4a} :catch_ec
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_34 .. :try_end_4a} :catch_ea
    .catchall {:try_start_34 .. :try_end_4a} :catchall_d9

    :try_start_4a
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_60

    sget-object p2, Lcom/google/android/gms/internal/ads/Ax;->j6:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_5a} :catch_d3
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_4a .. :try_end_5a} :catch_d1
    .catchall {:try_start_4a .. :try_end_5a} :catchall_cd

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception p1

    :goto_5f
    return v3

    :cond_60
    :try_start_60
    new-instance v6, Lcom/google/android/gms/internal/ads/dt;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/dt;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;[B)Lcom/google/android/gms/internal/ads/cw;

    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/dt;

    new-instance v1, Ljava/lang/String;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/dt;->v5:[B

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c4

    iget-object p2, v6, Lcom/google/android/gms/internal/ads/dt;->Hw:[B

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/dt;->FH:[B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zw;->j6([B)[B

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_c4

    iget-object p2, v6, Lcom/google/android/gms/internal/ads/dt;->Zo:[B

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_95

    goto :goto_c4

    :cond_95
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ax;->v5:Lcom/google/android/gms/internal/ads/kx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->Zo:[B

    new-instance v1, Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dt;->FH:[B

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/kx;->j6([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_ac} :catch_d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_60 .. :try_end_ac} :catch_d3
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_60 .. :try_end_ac} :catch_d1
    .catchall {:try_start_60 .. :try_end_ac} :catchall_cd

    :try_start_ac
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_c2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ac .. :try_end_b0} :catch_c0
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_ac .. :try_end_b0} :catch_be
    .catchall {:try_start_ac .. :try_end_b0} :catchall_bb

    :try_start_b0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_b5

    :catch_b4
    move-exception p1

    :goto_b5
    :try_start_b5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_ba

    :catch_b9
    move-exception p1

    :goto_ba
    return v4

    :catchall_bb
    move-exception p1

    move-object p2, p1

    goto :goto_cf

    :catch_be
    move-exception p1

    goto :goto_d7

    :catch_c0
    move-exception p1

    goto :goto_d7

    :catch_c2
    move-exception p1

    goto :goto_d7

    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c4 .. :try_end_c7} :catch_d3
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_c4 .. :try_end_c7} :catch_d1
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_cd

    :try_start_c7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_cc

    :catch_cb
    move-exception p1

    :goto_cc
    return v3

    :catchall_cd
    move-exception p2

    move-object v0, p1

    :goto_cf
    move-object p1, v5

    goto :goto_db

    :catch_d1
    move-exception p2

    goto :goto_d6

    :catch_d3
    move-exception p2

    goto :goto_d6

    :catch_d5
    move-exception p2

    :goto_d6
    move-object v0, p1

    :goto_d7
    move-object p1, v5

    goto :goto_f0

    :catchall_d9
    move-exception p2

    move-object v0, p1

    :goto_db
    if-eqz p1, :cond_e2

    :try_start_dd
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    move-exception p1

    :cond_e2
    :goto_e2
    if-eqz v0, :cond_e9

    :try_start_e4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_e9

    :catch_e8
    move-exception p1

    :cond_e9
    :goto_e9
    throw p2

    :catch_ea
    move-exception p2

    goto :goto_ef

    :catch_ec
    move-exception p2

    goto :goto_ef

    :catch_ee
    move-exception p2

    :goto_ef
    move-object v0, p1

    :goto_f0
    if-eqz p1, :cond_f7

    :try_start_f2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_f7

    :catch_f6
    move-exception p1

    :cond_f7
    :goto_f7
    if-eqz v0, :cond_fe

    :try_start_f9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_fe

    :catch_fd
    move-exception p1

    :cond_fe
    :goto_fe
    return v3
.end method

.method private final QX()Lcom/google/android/gms/internal/ads/br;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/gq;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/br;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    move-exception v0

    const/4 v0, 0x0

    :goto_24
    return-object v0
.end method

.method private final Ws()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->tp:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_14
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_14} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_17
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_1a

    :catch_17
    move-exception v0

    goto :goto_1a

    :catch_19
    move-exception v0

    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Ax;
    .registers 13

    const-string v0, "%s/%s.dex"

    const-string v1, "1529567361524"

    new-instance v2, Lcom/google/android/gms/internal/ads/Ax;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Ax;-><init>(Landroid/content/Context;)V

    :try_start_9
    new-instance p0, Lcom/google/android/gms/internal/ads/Bx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Bx;-><init>()V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v2, Lcom/google/android/gms/internal/ads/Ax;->FH:Ljava/util/concurrent/ExecutorService;

    iput-boolean p3, v2, Lcom/google/android/gms/internal/ads/Ax;->gn:Z

    if-eqz p3, :cond_25

    iget-object p0, v2, Lcom/google/android/gms/internal/ads/Ax;->FH:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/Cx;

    invoke-direct {p3, v2}, Lcom/google/android/gms/internal/ads/Cx;-><init>(Lcom/google/android/gms/internal/ads/Ax;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v2, Lcom/google/android/gms/internal/ads/Ax;->u7:Ljava/util/concurrent/Future;

    :cond_25
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/Ax;->FH:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/Ex;

    invoke-direct {p3, v2}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/Ax;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_9 .. :try_end_2f} :catch_157

    const/4 p0, 0x1

    const/4 p3, 0x0

    :try_start_31
    invoke-static {}, Lcom/google/android/gms/common/c;->j6()Lcom/google/android/gms/common/c;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/Ax;->J8:Z

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/c;->DW(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_4c

    const/4 v3, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/Ax;->Ws:Z
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_50

    goto :goto_51

    :catchall_50
    move-exception v3

    :goto_51
    :try_start_51
    invoke-virtual {v2, p3, p0}, Lcom/google/android/gms/internal/ads/Ax;->j6(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/Hx;->j6()Z

    move-result v3

    if-eqz v3, :cond_75

    sget-object v3, Lcom/google/android/gms/internal/ads/p;->ba:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6d

    goto :goto_75

    :cond_6d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    :goto_75
    new-instance v3, Lcom/google/android/gms/internal/ads/kx;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/kx;-><init>(Ljava/security/SecureRandom;)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/Ax;->v5:Lcom/google/android/gms/internal/ads/kx;
    :try_end_7d
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_51 .. :try_end_7d} :catch_157

    :try_start_7d
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/kx;->j6(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/gms/internal/ads/Ax;->Zo:[B
    :try_end_83
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_7d .. :try_end_83} :catch_150
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_7d .. :try_end_83} :catch_157

    :try_start_83
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_9c

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    const-string v3, "dex"

    invoke-virtual {p1, v3, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_96

    goto :goto_9c

    :cond_96
    new-instance p0, Lcom/google/android/gms/internal/ads/xx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xx;-><init>()V

    throw p0

    :cond_9c
    :goto_9c
    new-instance v3, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v1, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_cb

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Ax;->v5:Lcom/google/android/gms/internal/ads/kx;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/Ax;->Zo:[B

    invoke-virtual {v5, v7, p2}, Lcom/google/android/gms/internal/ads/kx;->j6([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_cb
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/Ax;->DW(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_ce} :catch_149
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_ce} :catch_142
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_83 .. :try_end_ce} :catch_13b
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_ce} :catch_134
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_83 .. :try_end_ce} :catch_157

    :try_start_ce
    new-instance p2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v4, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v2, Lcom/google/android/gms/internal/ads/Ax;->Hw:Ldalvik/system/DexClassLoader;
    :try_end_e3
    .catchall {:try_start_ce .. :try_end_e3} :catchall_11f

    :try_start_e3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v1, p2, p0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_f6} :catch_149
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f6} :catch_142
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_e3 .. :try_end_f6} :catch_13b
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_f6} :catch_134
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_e3 .. :try_end_f6} :catch_157

    :try_start_f6
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/Ax;->j3:Z

    if-nez p1, :cond_115

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, v2, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/Ax$a;

    invoke-direct {p3, v2, v4}, Lcom/google/android/gms/internal/ads/Ax$a;-><init>(Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/Bx;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean p0, v2, Lcom/google/android/gms/internal/ads/Ax;->j3:Z

    :cond_115
    new-instance p1, Lcom/google/android/gms/internal/ads/cx;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/cx;-><init>(Lcom/google/android/gms/internal/ads/Ax;)V

    iput-object p1, v2, Lcom/google/android/gms/internal/ads/Ax;->J0:Lcom/google/android/gms/internal/ads/cx;

    iput-boolean p0, v2, Lcom/google/android/gms/internal/ads/Ax;->XL:Z
    :try_end_11e
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_f6 .. :try_end_11e} :catch_157

    goto :goto_158

    :catchall_11f
    move-exception p2

    :try_start_120
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v1, v3, p0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/lang/String;)V

    throw p2
    :try_end_134
    .catch Ljava/io/FileNotFoundException; {:try_start_120 .. :try_end_134} :catch_149
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_134} :catch_142
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_120 .. :try_end_134} :catch_13b
    .catch Ljava/lang/NullPointerException; {:try_start_120 .. :try_end_134} :catch_134
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_120 .. :try_end_134} :catch_157

    :catch_134
    move-exception p0

    :try_start_135
    new-instance p1, Lcom/google/android/gms/internal/ads/xx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/xx;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_13b
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/xx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/xx;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_142
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/xx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/xx;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_149
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/xx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/xx;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_150
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/xx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/xx;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_157
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_135 .. :try_end_157} :catch_157

    :catch_157
    move-exception p0

    :goto_158
    return-object v2
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/br;)Lcom/google/android/gms/internal/ads/br;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ax;->EQ:Lcom/google/android/gms/internal/ads/br;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ax;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ax;->Ws()V

    return-void
.end method

.method private static j6(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/ads/Ax;->j6:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final j6(Ljava/io/File;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    :cond_1b
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_33

    return-void

    :cond_33
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_3e

    return-void

    :cond_3e
    long-to-int p1, v4

    new-array p1, p1, [B

    const/4 v1, 0x0

    :try_start_42
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_cc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_47} :catch_ca
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_42 .. :try_end_47} :catch_c8
    .catchall {:try_start_42 .. :try_end_47} :catchall_b3

    :try_start_47
    invoke-virtual {v4, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_af
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4b} :catch_ad
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_47 .. :try_end_4b} :catch_ab
    .catchall {:try_start_47 .. :try_end_4b} :catchall_a6

    if-gtz v5, :cond_56

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception p1

    :goto_52
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    return-void

    :cond_56
    :try_start_56
    new-instance v5, Lcom/google/android/gms/internal/ads/dt;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/dt;-><init>()V

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/ads/dt;->Zo:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v5, Lcom/google/android/gms/internal/ads/dt;->v5:[B

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ax;->v5:Lcom/google/android/gms/internal/ads/kx;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Ax;->Zo:[B

    invoke-virtual {p2, v6, p1}, Lcom/google/android/gms/internal/ads/kx;->j6([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/ads/dt;->FH:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zw;->j6([B)[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/ads/dt;->Hw:[B

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_85} :catch_af
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_85} :catch_ad
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_56 .. :try_end_85} :catch_ab
    .catchall {:try_start_56 .. :try_end_85} :catchall_a6

    :try_start_85
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, p2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_90} :catch_a4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_85 .. :try_end_90} :catch_a2
    .catch Lcom/google/android/gms/internal/ads/lx; {:try_start_85 .. :try_end_90} :catch_a0
    .catchall {:try_start_85 .. :try_end_90} :catchall_9e

    :try_start_90
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_95

    :catch_94
    move-exception p2

    :goto_95
    :try_start_95
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception p1

    :goto_9a
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    return-void

    :catchall_9e
    move-exception p2

    goto :goto_a9

    :catch_a0
    move-exception p2

    goto :goto_b1

    :catch_a2
    move-exception p2

    goto :goto_b1

    :catch_a4
    move-exception p2

    goto :goto_b1

    :catchall_a6
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    :goto_a9
    move-object v1, v4

    goto :goto_b6

    :catch_ab
    move-exception p1

    goto :goto_b0

    :catch_ad
    move-exception p1

    goto :goto_b0

    :catch_af
    move-exception p1

    :goto_b0
    move-object p1, v1

    :goto_b1
    move-object v1, v4

    goto :goto_ce

    :catchall_b3
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    :goto_b6
    if-eqz v1, :cond_bd

    :try_start_b8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_bd

    :catch_bc
    move-exception v0

    :cond_bd
    :goto_bd
    if-eqz p1, :cond_c4

    :try_start_bf
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception p1

    :cond_c4
    :goto_c4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    throw p2

    :catch_c8
    move-exception p1

    goto :goto_cd

    :catch_ca
    move-exception p1

    goto :goto_cd

    :catch_cc
    move-exception p1

    :goto_cd
    move-object p1, v1

    :goto_ce
    if-eqz v1, :cond_d5

    :try_start_d0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_d5

    :catch_d4
    move-exception p2

    :cond_d5
    :goto_d5
    if-eqz p1, :cond_dc

    :try_start_d7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_dc

    :catch_db
    move-exception p1

    :cond_dc
    :goto_dc
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    return-void
.end method

.method private static j6(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/io/File;)V

    return-void
.end method

.method static synthetic j6(ILcom/google/android/gms/internal/ads/br;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ax;->DW(ILcom/google/android/gms/internal/ads/br;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ax;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ax;->aM:Z

    return p1
.end method


# virtual methods
.method final DW(IZ)Lcom/google/android/gms/internal/ads/br;
    .registers 3

    if-lez p1, :cond_c

    if-eqz p2, :cond_c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception p1

    :cond_c
    :goto_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ax;->QX()Lcom/google/android/gms/internal/ads/br;

    move-result-object p1

    return-object p1
.end method

.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->XL:Z

    return v0
.end method

.method public final EQ()Lcom/google/android/gms/internal/ads/br;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->EQ:Lcom/google/android/gms/internal/ads/br;

    return-object v0
.end method

.method public final FH()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->FH:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final Hw()Ldalvik/system/DexClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->Hw:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->gn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->u7:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_26

    :try_start_11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ax;->u7:Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1a} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_1a} :catch_23
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->u7:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_26

    :catch_23
    move-exception v0

    goto :goto_26

    :catch_25
    move-exception v0

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->VH:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method public final J8()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->J0:Lcom/google/android/gms/internal/ads/cx;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/cx;->DW()I

    move-result v0

    goto :goto_b

    :cond_9
    const/high16 v0, -0x80000000

    :goto_b
    return v0
.end method

.method public final VH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->J8:Z

    return v0
.end method

.method public final Zo()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->Zo:[B

    return-object v0
.end method

.method public final gn()Lcom/google/android/gms/internal/ads/cx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->J0:Lcom/google/android/gms/internal/ads/cx;

    return-object v0
.end method

.method public final j6()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    return-object v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->QX:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hy;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hy;->j6()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method final j6(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->Ws:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->FH:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/Dx;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Dx;-><init>(Lcom/google/android/gms/internal/ads/Ax;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_14

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ax;->we:Ljava/util/concurrent/Future;

    :cond_14
    return-void
.end method

.method public final varargs j6(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->QX:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->QX:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/hy;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final tp()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->aM:Z

    return v0
.end method

.method public final u7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ax;->Ws:Z

    return v0
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/kx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->v5:Lcom/google/android/gms/internal/ads/kx;

    return-object v0
.end method

.method public final we()Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ax;->we:Ljava/util/concurrent/Future;

    return-object v0
.end method
