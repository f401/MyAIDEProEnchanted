.class public final Lcom/google/android/gms/internal/ads/Yr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/Yr$a;,
        Lcom/google/android/gms/internal/ads/Yr$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/Yr;",
        "Lcom/google/android/gms/internal/ads/Yr$a;",
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
            "Lcom/google/android/gms/internal/ads/Yr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfgn:Lcom/google/android/gms/internal/ads/Yr;


# instance fields
.field private zzfgk:Ljava/lang/String;

.field private zzfgl:Lcom/google/android/gms/internal/ads/yt;

.field private zzfgm:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Yr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Yr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    const-class v0, Lcom/google/android/gms/internal/ads/Yr;

    sget-object v1, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgk:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgl:Lcom/google/android/gms/internal/ads/yt;

    return-void
.end method

.method public static QX()Lcom/google/android/gms/internal/ads/Yr$a;
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/Yr;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Yr$a;

    return-object v0
.end method

.method public static XL()Lcom/google/android/gms/internal/ads/Yr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    return-object v0
.end method

.method static synthetic aM()Lcom/google/android/gms/internal/ads/Yr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Yr$b;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Yr$b;->DW()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgm:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Yr;Lcom/google/android/gms/internal/ads/Yr$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Yr;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Yr;Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Yr;->j6(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Yr;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Yr;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgl:Lcom/google/android/gms/internal/ads/yt;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private final j6(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgk:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final EQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgk:Ljava/lang/String;

    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgl:Lcom/google/android/gms/internal/ads/yt;

    return-object v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/Yr$b;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Yr$b;->j6(I)Lcom/google/android/gms/internal/ads/Yr$b;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->Zo:Lcom/google/android/gms/internal/ads/Yr$b;

    :cond_0
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/Zr;->j6:[I

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
    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/Yr;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/Yr;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/Yr;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzfgk"

    aput-object v4, v2, v3

    const-string v3, "zzfgl"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "zzfgm"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Yr$a;-><init>(Lcom/google/android/gms/internal/ads/Zr;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/Yr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Yr;-><init>()V

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
