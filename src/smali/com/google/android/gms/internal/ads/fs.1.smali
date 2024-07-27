.class public final Lcom/google/android/gms/internal/ads/fs;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/fs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/fs;",
        "Lcom/google/android/gms/internal/ads/fs$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu",
            "<",
            "Lcom/google/android/gms/internal/ads/fs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfhh:Lcom/google/android/gms/internal/ads/fs;


# instance fields
.field private zzfgk:Ljava/lang/String;

.field private zzfhd:Ljava/lang/String;

.field private zzfhe:I

.field private zzfhf:Z

.field private zzfhg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/fs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    const-class v0, Lcom/google/android/gms/internal/ads/fs;

    sget-object v1, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhd:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfgk:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhg:Ljava/lang/String;

    return-void
.end method

.method private final DW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhe:I

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/fs;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private final DW(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhd:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/fs;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private final FH(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhg:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static aM()Lcom/google/android/gms/internal/ads/fs$a;
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/fs;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fs$a;

    return-object v0
.end method

.method static synthetic j3()Lcom/google/android/gms/internal/ads/fs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fs;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->DW(I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fs;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fs;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->j6(Z)V

    return-void
.end method

.method private final j6(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfgk:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private final j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhf:Z

    return-void
.end method


# virtual methods
.method public final EQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfgk:Ljava/lang/String;

    return-object v0
.end method

.method public final J0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhd:Ljava/lang/String;

    return-object v0
.end method

.method public final QX()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhf:Z

    return v0
.end method

.method public final Ws()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhe:I

    return v0
.end method

.method public final XL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhg:Ljava/lang/String;

    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/gs;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/fs;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/fs;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/fs;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzfhd"

    aput-object v4, v2, v3

    const-string v3, "zzfgk"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "zzfhe"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "zzfhf"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "zzfhg"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/fs$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/fs$a;-><init>(Lcom/google/android/gms/internal/ads/gs;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/fs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fs;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
