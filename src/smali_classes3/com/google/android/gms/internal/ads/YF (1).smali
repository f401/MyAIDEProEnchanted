.class public final Lcom/google/android/gms/internal/ads/YF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/SG;

.field private final FH:Z

.field private final j6:Lcom/google/android/gms/internal/ads/zzur;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/YF;->FH:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzur;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->j6:Lcom/google/android/gms/internal/ads/zzur;

    new-instance v0, Lcom/google/android/gms/internal/ads/SG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/SG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/YF;->DW()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzur;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/YF;->j6:Lcom/google/android/gms/internal/ads/zzur;

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->yu:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/YF;->FH:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/SG;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/SG;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/YF;->DW()V

    return-void
.end method

.method private final DW()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    new-instance v1, Lcom/google/android/gms/internal/ads/OG;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/OG;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    new-instance v1, Lcom/google/android/gms/internal/ads/PG;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/PG;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/OG;->Zo:Lcom/google/android/gms/internal/ads/PG;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    new-instance v1, Lcom/google/android/gms/internal/ads/QG;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/QG;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/SG;->u7:Lcom/google/android/gms/internal/ads/QG;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/_F;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    invoke-static {}, Lcom/google/android/gms/internal/ads/YF;->FH()[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/SG;->gn:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->j6:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzur;->j6([B)Lcom/google/android/gms/internal/ads/eG;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/_F;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eG;->DW(I)Lcom/google/android/gms/internal/ads/eG;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eG;->j6()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/_F;->DW()I

    move-result p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "Logging Event with event code : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_3a
    new-instance p1, Ljava/lang/String;

    const-string v0, "Logging Event with event code : "

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/_F;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5b

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/File;

    const-string v2, "clearcut_events.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_5b

    :try_start_10
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_53
    .catchall {:try_start_10 .. :try_end_16} :catchall_5b

    :try_start_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/YF;->Hw(Lcom/google/android/gms/internal/ads/_F;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_35
    .catchall {:try_start_16 .. :try_end_26} :catchall_33

    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2b
    .catchall {:try_start_26 .. :try_end_29} :catchall_5b

    monitor-exit p0

    return-void

    :catch_2b
    move-exception p1

    :try_start_2c
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_53
    .catchall {:try_start_2c .. :try_end_31} :catchall_5b

    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    goto :goto_48

    :catch_35
    move-exception p1

    :try_start_36
    const-string p1, "Could not write Clearcut to file."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40
    .catchall {:try_start_3b .. :try_end_3e} :catchall_5b

    monitor-exit p0

    return-void

    :catch_40
    move-exception p1

    :try_start_41
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_46} :catch_53
    .catchall {:try_start_41 .. :try_end_46} :catchall_5b

    monitor-exit p0

    return-void

    :goto_48
    :try_start_48
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_5b

    goto :goto_52

    :catch_4c
    move-exception v0

    :try_start_4d
    const-string v0, "Could not close Clearcut output stream."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :goto_52
    throw p1
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_53} :catch_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_5b

    :catch_53
    move-exception p1

    :try_start_54
    const-string p1, "Could not find file for Clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5b

    monitor-exit p0

    return-void

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static FH()[J
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/p;->DW()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_21
    if-ge v3, v4, :cond_d

    aget-object v5, v2, v3

    :try_start_25
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v5

    const-string v5, "Experiment ID is not a number"

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_41
    if-ge v3, v2, :cond_54

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_54
    return-object v0
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/_F;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "id=%s,timestamp=%s,event=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/SG;->Hw:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/_F;->DW()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/YF;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/YF;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/YF;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/ZF;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/YF;->FH:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_16

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YF;->DW:Lcom/google/android/gms/internal/ads/SG;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ZF;->j6(Lcom/google/android/gms/internal/ads/SG;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_18

    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    :try_start_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "AdMobClearcutLogger.modify"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/_F;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/YF;->FH:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->e4:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/YF;->FH(Lcom/google/android/gms/internal/ads/_F;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_23

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/YF;->DW(Lcom/google/android/gms/internal/ads/_F;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
