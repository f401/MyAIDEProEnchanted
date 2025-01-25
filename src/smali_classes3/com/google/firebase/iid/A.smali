.class final Lcom/google/firebase/iid/A;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "LZx<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/firebase/iid/zzaw;

.field private j6:I


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzaw;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/A;->j6:I

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/A;->DW:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/iid/A;->FH:Lcom/google/firebase/iid/zzaw;

    return-void
.end method

.method private final DW()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/A;->FH:Lcom/google/firebase/iid/zzaw;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/A;->FH:Lcom/google/firebase/iid/zzaw;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzaw;->j6()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_27

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    aget-object v0, v0, v2

    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0

    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private static j6(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "FirebaseInstanceId"

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_73

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget-object p1, p1, v3

    :try_start_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x53

    if-eq v4, v5, :cond_29

    const/16 v5, 0x55

    if-eq v4, v5, :cond_1f

    goto :goto_33

    :cond_1f
    const-string v4, "U"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_29
    const-string v4, "S"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v2, -0x1

    :goto_34
    if-eqz v2, :cond_48

    if-eq v2, v3, :cond_39

    goto :goto_73

    :cond_39
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo()Z

    move-result p0

    if-eqz p0, :cond_73

    const-string p0, "unsubscribe operation succeeded"

    :goto_44
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_48
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo()Z

    move-result p0

    if-eqz p0, :cond_73

    const-string p0, "subscribe operation succeeded"
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_53} :catch_54

    goto :goto_44

    :catch_54
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v2, "Topic sync failed: "

    if-eqz p1, :cond_6a

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6f

    :cond_6a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6f
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_73
    :goto_73
    return v3
.end method

.method private final j6(Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/A;->FH:Lcom/google/firebase/iid/zzaw;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_58

    :try_start_4
    iget-object v1, p0, Lcom/google/firebase/iid/A;->FH:Lcom/google/firebase/iid/zzaw;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzaw;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_1b
    new-instance v2, Ljava/lang/String;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, ","

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    :cond_39
    new-instance p1, Ljava/lang/String;

    const-string v2, ","

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/iid/A;->FH:Lcom/google/firebase/iid/zzaw;

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_55

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_51
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_55

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final j6()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/firebase/iid/A;->DW()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final j6(Lcom/google/firebase/iid/FirebaseInstanceId;)Z
    .registers 6

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/firebase/iid/A;->DW()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "FirebaseInstanceId"

    const-string v0, "topic sync succeeded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    monitor-exit p0

    return v1

    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_42

    invoke-static {p1, v0}, Lcom/google/firebase/iid/A;->j6(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const/4 p1, 0x0

    return p1

    :cond_20
    monitor-enter p0

    :try_start_21
    iget-object v2, p0, Lcom/google/firebase/iid/A;->DW:Ljava/util/Map;

    iget v3, p0, Lcom/google/firebase/iid/A;->j6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Zx;

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/A;->j6(Ljava/lang/String;)Z

    iget v0, p0, Lcom/google/firebase/iid/A;->j6:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/iid/A;->j6:I

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_3f

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1

    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    goto :goto_46

    :goto_45
    throw p1

    :goto_46
    goto :goto_45
.end method
